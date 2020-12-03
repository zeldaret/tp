#include "dolphin/types.h"

class e_wb_class{
  public:
   u32 checkWait(void);
   void setPlayerRideNow(void);
   void setPlayerRide(void);
   void getOff(void);
   u8 checkDownDamage(void);
   u8 checkNormalRideMode(void) const;
   void setRunRideMode(void);

  private:
   u8 unk0[0x5b4];
   s16 unk1460;
   u8 unk1462[0xd9];
   s16 unk1680;
   u16 unk1682;
   u8 unk1684[0x2a];
   u16 unk1726;
};