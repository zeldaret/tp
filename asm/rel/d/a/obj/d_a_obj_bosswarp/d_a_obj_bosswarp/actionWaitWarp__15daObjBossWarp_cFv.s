lbl_8057A678:
/* 8057A678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057A67C  7C 08 02 A6 */	mflr r0
/* 8057A680  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057A684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057A688  7C 7F 1B 78 */	mr r31, r3
/* 8057A68C  4B FF F7 D1 */	bl checkDistance__15daObjBossWarp_cFv
/* 8057A690  2C 03 00 00 */	cmpwi r3, 0
/* 8057A694  41 82 00 38 */	beq lbl_8057A6CC
/* 8057A698  38 00 00 07 */	li r0, 7
/* 8057A69C  98 1F 05 90 */	stb r0, 0x590(r31)
/* 8057A6A0  7F E3 FB 78 */	mr r3, r31
/* 8057A6A4  A8 9F 05 C8 */	lha r4, 0x5c8(r31)
/* 8057A6A8  38 A0 00 FF */	li r5, 0xff
/* 8057A6AC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8057A6B0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8057A6B4  38 E0 00 00 */	li r7, 0
/* 8057A6B8  39 00 00 01 */	li r8, 1
/* 8057A6BC  4B AA 0F C0 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8057A6C0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8057A6C4  60 00 00 02 */	ori r0, r0, 2
/* 8057A6C8  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_8057A6CC:
/* 8057A6CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057A6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057A6D4  7C 08 03 A6 */	mtlr r0
/* 8057A6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057A6DC  4E 80 00 20 */	blr 
