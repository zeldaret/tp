lbl_8029E274:
/* 8029E274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E278  7C 08 02 A6 */	mflr r0
/* 8029E27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E280  7C 60 1B 78 */	mr r0, r3
/* 8029E284  7C 85 23 78 */	mr r5, r4
/* 8029E288  3C 60 80 43 */	lis r3, sSubFrameCallback__9JASDriver@ha
/* 8029E28C  38 63 1D 78 */	addi r3, r3, sSubFrameCallback__9JASDriver@l
/* 8029E290  7C 04 03 78 */	mr r4, r0
/* 8029E294  4B FF 1D 15 */	bl regist__14JASCallbackMgrFPFPv_lPv
/* 8029E298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E29C  7C 08 03 A6 */	mtlr r0
/* 8029E2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E2A4  4E 80 00 20 */	blr 
