#ifndef JAUSECTIONHEAP_H_
#define JAUSECTIONHEAP_H_

extern "C" {
void JAUSectionHeap_NS_getOpenSection(void);
void JAUSectionHeap_NS_loadDynamicSeq(void);
void JAUSectionHeap_NS_newDynamicSeqBlock(void);
void JAUSectionHeap_NS_releaseIdleDynamicSeqDataBlock(void);
void JAUSectionHeap_NS_setSeqDataArchive(void);
}

#endif  // JAUSECTIONHEAP_H_
