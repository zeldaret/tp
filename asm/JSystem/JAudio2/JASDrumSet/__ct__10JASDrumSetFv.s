lbl_802982EC:
/* 802982EC  3C 80 80 3C */	lis r4, __vt__7JASInst@ha
/* 802982F0  38 04 76 FC */	addi r0, r4, __vt__7JASInst@l
/* 802982F4  90 03 00 00 */	stw r0, 0(r3)
/* 802982F8  3C 80 80 3C */	lis r4, __vt__10JASDrumSet@ha
/* 802982FC  38 04 77 10 */	addi r0, r4, __vt__10JASDrumSet@l
/* 80298300  90 03 00 00 */	stw r0, 0(r3)
/* 80298304  38 00 00 00 */	li r0, 0
/* 80298308  90 03 00 04 */	stw r0, 4(r3)
/* 8029830C  98 03 00 08 */	stb r0, 8(r3)
/* 80298310  4E 80 00 20 */	blr 
