lbl_80952D9C:
/* 80952D9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80952DA0  7C 08 02 A6 */	mflr r0
/* 80952DA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80952DA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80952DAC  4B A0 F4 31 */	bl _savegpr_29
/* 80952DB0  7C 7D 1B 78 */	mr r29, r3
/* 80952DB4  3B C0 00 0C */	li r30, 0xc
/* 80952DB8  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80952DBC  2C 00 00 03 */	cmpwi r0, 3
/* 80952DC0  41 82 00 48 */	beq lbl_80952E08
/* 80952DC4  40 80 00 1C */	bge lbl_80952DE0
/* 80952DC8  2C 00 00 01 */	cmpwi r0, 1
/* 80952DCC  41 82 00 2C */	beq lbl_80952DF8
/* 80952DD0  40 80 00 30 */	bge lbl_80952E00
/* 80952DD4  2C 00 00 00 */	cmpwi r0, 0
/* 80952DD8  40 80 00 18 */	bge lbl_80952DF0
/* 80952DDC  48 00 00 40 */	b lbl_80952E1C
lbl_80952DE0:
/* 80952DE0  2C 00 00 05 */	cmpwi r0, 5
/* 80952DE4  41 82 00 34 */	beq lbl_80952E18
/* 80952DE8  40 80 00 34 */	bge lbl_80952E1C
/* 80952DEC  48 00 00 24 */	b lbl_80952E10
lbl_80952DF0:
/* 80952DF0  3B C0 00 06 */	li r30, 6
/* 80952DF4  48 00 00 28 */	b lbl_80952E1C
lbl_80952DF8:
/* 80952DF8  3B C0 00 07 */	li r30, 7
/* 80952DFC  48 00 00 20 */	b lbl_80952E1C
lbl_80952E00:
/* 80952E00  3B C0 00 08 */	li r30, 8
/* 80952E04  48 00 00 18 */	b lbl_80952E1C
lbl_80952E08:
/* 80952E08  3B C0 00 09 */	li r30, 9
/* 80952E0C  48 00 00 10 */	b lbl_80952E1C
lbl_80952E10:
/* 80952E10  3B C0 00 0A */	li r30, 0xa
/* 80952E14  48 00 00 08 */	b lbl_80952E1C
lbl_80952E18:
/* 80952E18  3B C0 00 0B */	li r30, 0xb
lbl_80952E1C:
/* 80952E1C  2C 1E 00 00 */	cmpwi r30, 0
/* 80952E20  41 80 00 2C */	blt lbl_80952E4C
/* 80952E24  7C 1E 00 00 */	cmpw r30, r0
/* 80952E28  41 82 00 24 */	beq lbl_80952E4C
/* 80952E2C  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80952E30  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80952E34  4B 7F 2A 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80952E38  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80952E3C  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80952E40  3C 60 80 95 */	lis r3, lit_4804@ha /* 0x809577B4@ha */
/* 80952E44  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)  /* 0x809577B4@l */
/* 80952E48  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80952E4C:
/* 80952E4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80952E50  4B A0 F3 D9 */	bl _restgpr_29
/* 80952E54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80952E58  7C 08 03 A6 */	mtlr r0
/* 80952E5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80952E60  4E 80 00 20 */	blr 
