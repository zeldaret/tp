lbl_8029E240:
/* 8029E240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E244  7C 08 02 A6 */	mflr r0
/* 8029E248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E24C  7C 60 1B 78 */	mr r0, r3
/* 8029E250  7C 85 23 78 */	mr r5, r4
/* 8029E254  3C 60 80 43 */	lis r3, sDspSyncCallback__9JASDriver@ha /* 0x80431C78@ha */
/* 8029E258  38 63 1C 78 */	addi r3, r3, sDspSyncCallback__9JASDriver@l /* 0x80431C78@l */
/* 8029E25C  7C 04 03 78 */	mr r4, r0
/* 8029E260  4B FF 1D 49 */	bl regist__14JASCallbackMgrFPFPv_lPv
/* 8029E264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E268  7C 08 03 A6 */	mtlr r0
/* 8029E26C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E270  4E 80 00 20 */	blr 
