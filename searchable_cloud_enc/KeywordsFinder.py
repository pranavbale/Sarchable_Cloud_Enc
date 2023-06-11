# Adapted from: github.com/aneesha/RAKE/rake.py
from __future__ import division
import operator
import nltk
import string

def isPunct(word):
  return len(word) == 1 and word in string.punctuation

def isNumeric(word):
  try:
    float(word) if '.' in word else int(word)
    return True
  except ValueError:
    return False

class RakeKeywordExtractor:

  def __init__(self):
    self.stopwords = set(nltk.corpus.stopwords.words())
    self.top_fraction = 1 # consider top third candidate keywords by score

  def _generate_candidate_keywords(self, sentences):
    phrase_list = []
    for sentence in sentences:
      words = map(lambda x: "|" if x in self.stopwords else x,
        nltk.word_tokenize(sentence.lower()))
      phrase = []
      for word in words:
        if word == "|" or isPunct(word):
          if len(phrase) > 0:
            phrase_list.append(phrase)
            phrase = []
        else:
          phrase.append(word)
    return phrase_list

  def _calculate_word_scores(self, phrase_list):
    word_freq = nltk.FreqDist()
    word_degree = nltk.FreqDist()
    for phrase in phrase_list:
      l = list((filter(lambda x: not isNumeric(x), phrase)))
      #degree = len(filter(lambda x: not isNumeric(x), phrase)) - 1
      degree=len(l)-1
      
      for word in phrase:
       # word_freq.inc(word)
        word_freq[word] += 1
        #word_degree.inc(word, degree) # other words
        word_degree[word] += degree
    for word in word_freq.keys():
      word_degree[word] = word_degree[word] + word_freq[word] # itself
    # word score = deg(w) / freq(w)
    word_scores = {}
    for word in word_freq.keys():
      word_scores[word] = word_degree[word] / word_freq[word]
    return word_scores

  def _calculate_phrase_scores(self, phrase_list, word_scores):
    phrase_scores = {}
    for phrase in phrase_list:
      phrase_score = 0
      for word in phrase:
        phrase_score += word_scores[word]
      phrase_scores[" ".join(phrase)] = phrase_score
    return phrase_scores
    
  def extract(self, text, incl_scores=False,docid=0):
    sentences = nltk.sent_tokenize(text)
    phrase_list = self._generate_candidate_keywords(sentences)
    word_scores = self._calculate_word_scores(phrase_list)
    phrase_scores = self._calculate_phrase_scores(
      phrase_list, word_scores)
    sorted_phrase_scores = sorted(phrase_scores.items(),
      key=operator.itemgetter(1), reverse=True)
    n_phrases = len(sorted_phrase_scores)
    if incl_scores:
      return sorted_phrase_scores[0:int(n_phrases/self.top_fraction)]
    else:
      return map(lambda x: x[0],
        sorted_phrase_scores[0:int(n_phrases/self.top_fraction)])

def test(docpath='NA',docid1=0):
  keywords='NA'
  try:
    print('before rake')
    rake = RakeKeywordExtractor()
    print('after rake')
    #print(docpath)
    print(docid1)
    keywords = rake.extract(docpath, incl_scores=True, docid=docid1)
    print('after keyw')
    #print (keywords)
    keywords1=addDocIDToKeywords(keywords,docid1)
    print("after insertion")
    print (keywords1)
  except:
    print("Something else went wrong") 
  return keywords1

def test1(docpath='NA'):
  keywords='NA'
  return keywords
#if __name__ == "__main__":
 # test()

def addDocIDToKeywords(keywords,docid1=0) : 
    cnt=0
    for x in keywords:
        cnt=cnt+1
        print(x)
        print()
        x=x+(docid1,)
        print(x)
        if(cnt==1) :
            val=(x,)
        else :
            lst=list(val)
            lst.append(x)
            val=tuple(lst)
        
    print(val)
    return val