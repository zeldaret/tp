lbl_80B55004:
/* 80B55004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B55008  7C 08 02 A6 */	mflr r0
/* 80B5500C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B55010  39 61 00 20 */	addi r11, r1, 0x20
/* 80B55014  4B 80 D1 C8 */	b _savegpr_29
/* 80B55018  7C 7D 1B 78 */	mr r29, r3
/* 80B5501C  3B C0 00 0F */	li r30, 0xf
/* 80B55020  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B55024  2C 00 00 05 */	cmpwi r0, 5
/* 80B55028  41 82 00 28 */	beq lbl_80B55050
/* 80B5502C  40 80 00 10 */	bge lbl_80B5503C
/* 80B55030  2C 00 00 04 */	cmpwi r0, 4
/* 80B55034  40 80 00 14 */	bge lbl_80B55048
/* 80B55038  48 00 00 24 */	b lbl_80B5505C
lbl_80B5503C:
/* 80B5503C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B55040  41 82 00 18 */	beq lbl_80B55058
/* 80B55044  48 00 00 18 */	b lbl_80B5505C
lbl_80B55048:
/* 80B55048  3B C0 00 0D */	li r30, 0xd
/* 80B5504C  48 00 00 10 */	b lbl_80B5505C
lbl_80B55050:
/* 80B55050  3B C0 00 0E */	li r30, 0xe
/* 80B55054  48 00 00 08 */	b lbl_80B5505C
lbl_80B55058:
/* 80B55058  3B C0 00 0B */	li r30, 0xb
lbl_80B5505C:
/* 80B5505C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B55060  41 80 00 2C */	blt lbl_80B5508C
/* 80B55064  7C 1E 00 00 */	cmpw r30, r0
/* 80B55068  41 82 00 24 */	beq lbl_80B5508C
/* 80B5506C  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80B55070  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B55074  4B 5F 08 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B55078  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80B5507C  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80B55080  3C 60 80 B6 */	lis r3, lit_5084@ha
/* 80B55084  C0 03 D8 D0 */	lfs f0, lit_5084@l(r3)
/* 80B55088  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B5508C:
/* 80B5508C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B55090  4B 80 D1 98 */	b _restgpr_29
/* 80B55094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B55098  7C 08 03 A6 */	mtlr r0
/* 80B5509C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B550A0  4E 80 00 20 */	blr 
