#ifndef JAI_SE_MGR_H_
#define JAI_SE_MGR_H_

class JAISeCategoryMgr {
public:
    ~JAISeCategoryMgr();
};

extern "C" {
void JAISeMgr_NS_dtor(void);
void calc__8JAISeMgrFv(void);
void getNumActiveSe__8JAISeMgrCFv(void);
void initParams__8JAISeMgrFv(void);
void mixOut__8JAISeMgrFv(void);
void setAudience__8JAISeMgrFP11JAIAudience(void);
void setCategoryArrangement__8JAISeMgrFRC24JAISeCategoryArrangement(void);
void setSeqDataMgr__8JAISeMgrFP13JAISeqDataMgr(void);
void JAISeMgr_NS_startSound(void);
void stop__8JAISeMgrFv(void);
void stop__8JAISeMgrFvSoundID(void);
}

#endif  // JAI_SE_MGR_H_
