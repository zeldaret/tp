#ifndef JAI_SE_MGR_H_
#define JAI_SE_MGR_H_

class JAISeCategoryMgr {
public:
    ~JAISeCategoryMgr();
};

extern "C" {
void JAISeMgr_NS_dtor(void);
void JAISeMgr_NS_calc(void);
void JAISeMgr_NS_getNumActiveSe(void);
void JAISeMgr_NS_initParams(void);
void JAISeMgr_NS_mixOut(void);
void JAISeMgr_NS_setAudience(void);
void JAISeMgr_NS_setCategoryArrangement(void);
void JAISeMgr_NS_setSeqDataMgr(void);
void JAISeMgr_NS_startSound(void);
void JAISeMgr_NS_stop(void);
void JAISeMgr_NS_stopSoundID(void);
}

#endif  // JAI_SE_MGR_H_
