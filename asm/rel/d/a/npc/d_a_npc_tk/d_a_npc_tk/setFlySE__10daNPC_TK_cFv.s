lbl_80B01EF4:
/* 80B01EF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B01EF8  7C 08 02 A6 */	mflr r0
/* 80B01EFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B01F00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B01F04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B01F08  7C 7F 1B 78 */	mr r31, r3
/* 80B01F0C  3C 80 80 B1 */	lis r4, lit_3999@ha
/* 80B01F10  3B C4 C1 C4 */	addi r30, r4, lit_3999@l
/* 80B01F14  38 80 00 06 */	li r4, 6
/* 80B01F18  4B FF F6 25 */	bl checkBck__10daNPC_TK_cFi
/* 80B01F1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B01F20  41 82 00 4C */	beq lbl_80B01F6C
/* 80B01F24  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80B01F28  38 63 00 0C */	addi r3, r3, 0xc
/* 80B01F2C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80B01F30  4B 82 64 FC */	b checkPass__12J3DFrameCtrlFf
/* 80B01F34  2C 03 00 00 */	cmpwi r3, 0
/* 80B01F38  41 82 01 2C */	beq lbl_80B02064
/* 80B01F3C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060039@ha */
/* 80B01F40  38 03 00 39 */	addi r0, r3, 0x0039 /* 0x00060039@l */
/* 80B01F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B01F48  38 7F 05 74 */	addi r3, r31, 0x574
/* 80B01F4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B01F50  38 A0 00 00 */	li r5, 0
/* 80B01F54  38 C0 FF FF */	li r6, -1
/* 80B01F58  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80B01F5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B01F60  7D 89 03 A6 */	mtctr r12
/* 80B01F64  4E 80 04 21 */	bctrl 
/* 80B01F68  48 00 00 FC */	b lbl_80B02064
lbl_80B01F6C:
/* 80B01F6C  7F E3 FB 78 */	mr r3, r31
/* 80B01F70  38 80 00 08 */	li r4, 8
/* 80B01F74  4B FF F5 C9 */	bl checkBck__10daNPC_TK_cFi
/* 80B01F78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B01F7C  41 82 00 34 */	beq lbl_80B01FB0
/* 80B01F80  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006003A@ha */
/* 80B01F84  38 03 00 3A */	addi r0, r3, 0x003A /* 0x0006003A@l */
/* 80B01F88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B01F8C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80B01F90  38 81 00 10 */	addi r4, r1, 0x10
/* 80B01F94  38 A0 00 00 */	li r5, 0
/* 80B01F98  38 C0 FF FF */	li r6, -1
/* 80B01F9C  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80B01FA0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80B01FA4  7D 89 03 A6 */	mtctr r12
/* 80B01FA8  4E 80 04 21 */	bctrl 
/* 80B01FAC  48 00 00 B8 */	b lbl_80B02064
lbl_80B01FB0:
/* 80B01FB0  7F E3 FB 78 */	mr r3, r31
/* 80B01FB4  38 80 00 07 */	li r4, 7
/* 80B01FB8  4B FF F5 85 */	bl checkBck__10daNPC_TK_cFi
/* 80B01FBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B01FC0  41 82 00 4C */	beq lbl_80B0200C
/* 80B01FC4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80B01FC8  38 63 00 0C */	addi r3, r3, 0xc
/* 80B01FCC  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80B01FD0  4B 82 64 5C */	b checkPass__12J3DFrameCtrlFf
/* 80B01FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80B01FD8  41 82 00 8C */	beq lbl_80B02064
/* 80B01FDC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006003B@ha */
/* 80B01FE0  38 03 00 3B */	addi r0, r3, 0x003B /* 0x0006003B@l */
/* 80B01FE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B01FE8  38 7F 05 74 */	addi r3, r31, 0x574
/* 80B01FEC  38 81 00 0C */	addi r4, r1, 0xc
/* 80B01FF0  38 A0 00 00 */	li r5, 0
/* 80B01FF4  38 C0 FF FF */	li r6, -1
/* 80B01FF8  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80B01FFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B02000  7D 89 03 A6 */	mtctr r12
/* 80B02004  4E 80 04 21 */	bctrl 
/* 80B02008  48 00 00 5C */	b lbl_80B02064
lbl_80B0200C:
/* 80B0200C  7F E3 FB 78 */	mr r3, r31
/* 80B02010  38 80 00 09 */	li r4, 9
/* 80B02014  4B FF F5 29 */	bl checkBck__10daNPC_TK_cFi
/* 80B02018  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B0201C  41 82 00 48 */	beq lbl_80B02064
/* 80B02020  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80B02024  38 63 00 0C */	addi r3, r3, 0xc
/* 80B02028  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80B0202C  4B 82 64 00 */	b checkPass__12J3DFrameCtrlFf
/* 80B02030  2C 03 00 00 */	cmpwi r3, 0
/* 80B02034  41 82 00 30 */	beq lbl_80B02064
/* 80B02038  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006003C@ha */
/* 80B0203C  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0006003C@l */
/* 80B02040  90 01 00 08 */	stw r0, 8(r1)
/* 80B02044  38 7F 05 74 */	addi r3, r31, 0x574
/* 80B02048  38 81 00 08 */	addi r4, r1, 8
/* 80B0204C  38 A0 00 00 */	li r5, 0
/* 80B02050  38 C0 FF FF */	li r6, -1
/* 80B02054  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80B02058  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B0205C  7D 89 03 A6 */	mtctr r12
/* 80B02060  4E 80 04 21 */	bctrl 
lbl_80B02064:
/* 80B02064  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B02068  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B0206C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B02070  7C 08 03 A6 */	mtlr r0
/* 80B02074  38 21 00 20 */	addi r1, r1, 0x20
/* 80B02078  4E 80 00 20 */	blr 
