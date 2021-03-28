lbl_80AEA1B4:
/* 80AEA1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA1B8  7C 08 02 A6 */	mflr r0
/* 80AEA1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEA1C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEA1C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEA1CC  7C 9F 23 78 */	mr r31, r4
/* 80AEA1D0  41 82 00 38 */	beq lbl_80AEA208
/* 80AEA1D4  3C 80 80 AF */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AEA1D8  38 84 A6 AC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AEA1DC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AEA1E0  38 04 00 0C */	addi r0, r4, 0xc
/* 80AEA1E4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AEA1E8  38 04 00 18 */	addi r0, r4, 0x18
/* 80AEA1EC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AEA1F0  38 80 00 00 */	li r4, 0
/* 80AEA1F4  4B 58 BD A0 */	b __dt__9dBgS_AcchFv
/* 80AEA1F8  7F E0 07 35 */	extsh. r0, r31
/* 80AEA1FC  40 81 00 0C */	ble lbl_80AEA208
/* 80AEA200  7F C3 F3 78 */	mr r3, r30
/* 80AEA204  4B 7E 4B 38 */	b __dl__FPv
lbl_80AEA208:
/* 80AEA208  7F C3 F3 78 */	mr r3, r30
/* 80AEA20C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEA210  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEA214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA218  7C 08 03 A6 */	mtlr r0
/* 80AEA21C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA220  4E 80 00 20 */	blr 
