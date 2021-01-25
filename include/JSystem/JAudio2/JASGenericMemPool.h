#ifndef JASGENERICMEMPOOL_H_
#define JASGENERICMEMPOOL_H_

extern "C" {
void JASGenericMemPool(void);
void JASGenericMemPool_NS_alloc(void);
void JASGenericMemPool_NS_dtor(void);
void JASGenericMemPool_NS_free(void);
void JASGenericMemPool_NS_newMemPool(void);
}

#endif  // JASGENERICMEMPOOL_H_
