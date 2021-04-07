lbl_80CE6454:
/* 80CE6454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE6458  7C 08 02 A6 */	mflr r0
/* 80CE645C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE6460  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE6464  7C 7F 1B 78 */	mr r31, r3
/* 80CE6468  A0 03 0B 08 */	lhz r0, 0xb08(r3)
/* 80CE646C  2C 00 00 01 */	cmpwi r0, 1
/* 80CE6470  41 82 00 10 */	beq lbl_80CE6480
/* 80CE6474  40 80 00 88 */	bge lbl_80CE64FC
/* 80CE6478  48 00 00 84 */	b lbl_80CE64FC
/* 80CE647C  48 00 00 80 */	b lbl_80CE64FC
lbl_80CE6480:
/* 80CE6480  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80CE6484  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80CE6488  7D 89 03 A6 */	mtctr r12
/* 80CE648C  4E 80 04 21 */	bctrl 
/* 80CE6490  A0 1F 05 74 */	lhz r0, 0x574(r31)
/* 80CE6494  7C 03 07 34 */	extsh r3, r0
/* 80CE6498  4B 55 22 99 */	bl dMsgObject_addTotalPrice__Fs
/* 80CE649C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE64A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE64A4  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80CE64A8  38 00 00 03 */	li r0, 3
/* 80CE64AC  B0 05 06 04 */	sth r0, 0x604(r5)
/* 80CE64B0  38 60 00 00 */	li r3, 0
/* 80CE64B4  90 65 06 0C */	stw r3, 0x60c(r5)
/* 80CE64B8  88 9F 0B 0C */	lbz r4, 0xb0c(r31)
/* 80CE64BC  38 00 00 2A */	li r0, 0x2a
/* 80CE64C0  90 05 06 14 */	stw r0, 0x614(r5)
/* 80CE64C4  90 85 06 0C */	stw r4, 0x60c(r5)
/* 80CE64C8  90 65 06 10 */	stw r3, 0x610(r5)
/* 80CE64CC  B0 65 06 0A */	sth r3, 0x60a(r5)
/* 80CE64D0  3C 60 80 CE */	lis r3, lit_4405@ha /* 0x80CE6A90@ha */
/* 80CE64D4  38 83 6A 90 */	addi r4, r3, lit_4405@l /* 0x80CE6A90@l */
/* 80CE64D8  80 64 00 00 */	lwz r3, 0(r4)
/* 80CE64DC  80 04 00 04 */	lwz r0, 4(r4)
/* 80CE64E0  90 61 00 08 */	stw r3, 8(r1)
/* 80CE64E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE64E8  80 04 00 08 */	lwz r0, 8(r4)
/* 80CE64EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE64F0  7F E3 FB 78 */	mr r3, r31
/* 80CE64F4  38 81 00 08 */	addi r4, r1, 8
/* 80CE64F8  4B FF F8 E5 */	bl setProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
lbl_80CE64FC:
/* 80CE64FC  38 60 00 00 */	li r3, 0
/* 80CE6500  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE6504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE6508  7C 08 03 A6 */	mtlr r0
/* 80CE650C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE6510  4E 80 00 20 */	blr 
