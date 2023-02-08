lbl_80BDEECC:
/* 80BDEECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDEED0  7C 08 02 A6 */	mflr r0
/* 80BDEED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDEED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDEEDC  7C 7F 1B 78 */	mr r31, r3
/* 80BDEEE0  88 03 05 E0 */	lbz r0, 0x5e0(r3)
/* 80BDEEE4  28 00 00 01 */	cmplwi r0, 1
/* 80BDEEE8  40 82 00 14 */	bne lbl_80BDEEFC
/* 80BDEEEC  38 00 00 04 */	li r0, 4
/* 80BDEEF0  98 1F 05 E2 */	stb r0, 0x5e2(r31)
/* 80BDEEF4  48 00 04 2D */	bl moveInit__17daObjDmElevator_cFv
/* 80BDEEF8  48 00 00 54 */	b lbl_80BDEF4C
lbl_80BDEEFC:
/* 80BDEEFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDEF00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDEF04  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80BDEF08  28 00 00 00 */	cmplwi r0, 0
/* 80BDEF0C  40 82 00 40 */	bne lbl_80BDEF4C
/* 80BDEF10  88 1F 06 2D */	lbz r0, 0x62d(r31)
/* 80BDEF14  28 00 00 00 */	cmplwi r0, 0
/* 80BDEF18  41 82 00 34 */	beq lbl_80BDEF4C
/* 80BDEF1C  38 00 00 01 */	li r0, 1
/* 80BDEF20  98 1F 05 E2 */	stb r0, 0x5e2(r31)
/* 80BDEF24  A8 9F 05 E6 */	lha r4, 0x5e6(r31)
/* 80BDEF28  38 A0 00 FF */	li r5, 0xff
/* 80BDEF2C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80BDEF30  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80BDEF34  38 E0 00 00 */	li r7, 0
/* 80BDEF38  39 00 00 01 */	li r8, 1
/* 80BDEF3C  4B 43 C7 41 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80BDEF40  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80BDEF44  60 00 00 02 */	ori r0, r0, 2
/* 80BDEF48  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80BDEF4C:
/* 80BDEF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDEF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDEF54  7C 08 03 A6 */	mtlr r0
/* 80BDEF58  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDEF5C  4E 80 00 20 */	blr 
