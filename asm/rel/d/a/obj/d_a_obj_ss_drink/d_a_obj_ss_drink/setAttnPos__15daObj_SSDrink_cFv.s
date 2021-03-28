lbl_80CE60E8:
/* 80CE60E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE60EC  7C 08 02 A6 */	mflr r0
/* 80CE60F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE60F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE60F8  7C 7F 1B 78 */	mr r31, r3
/* 80CE60FC  3C 80 80 CE */	lis r4, lit_4284@ha
/* 80CE6100  38 A4 6A 60 */	addi r5, r4, lit_4284@l
/* 80CE6104  80 85 00 00 */	lwz r4, 0(r5)
/* 80CE6108  80 05 00 04 */	lwz r0, 4(r5)
/* 80CE610C  90 81 00 08 */	stw r4, 8(r1)
/* 80CE6110  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE6114  80 05 00 08 */	lwz r0, 8(r5)
/* 80CE6118  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE611C  38 81 00 08 */	addi r4, r1, 8
/* 80CE6120  4B FF FC 91 */	bl checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
/* 80CE6124  2C 03 00 00 */	cmpwi r3, 0
/* 80CE6128  40 82 00 1C */	bne lbl_80CE6144
/* 80CE612C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CE6130  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CE6134  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CE6138  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CE613C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CE6140  D0 1F 05 58 */	stfs f0, 0x558(r31)
lbl_80CE6144:
/* 80CE6144  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CE6148  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CE614C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CE6150  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CE6154  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CE6158  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CE615C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE6160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE6164  7C 08 03 A6 */	mtlr r0
/* 80CE6168  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE616C  4E 80 00 20 */	blr 
