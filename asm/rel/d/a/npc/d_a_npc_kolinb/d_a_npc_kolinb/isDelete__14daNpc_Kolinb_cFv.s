lbl_80A461E8:
/* 80A461E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A461EC  7C 08 02 A6 */	mflr r0
/* 80A461F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A461F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A461F8  88 03 0F B4 */	lbz r0, 0xfb4(r3)
/* 80A461FC  2C 00 00 01 */	cmpwi r0, 1
/* 80A46200  41 82 00 50 */	beq lbl_80A46250
/* 80A46204  40 80 00 10 */	bge lbl_80A46214
/* 80A46208  2C 00 00 00 */	cmpwi r0, 0
/* 80A4620C  40 80 00 14 */	bge lbl_80A46220
/* 80A46210  48 00 00 A0 */	b lbl_80A462B0
lbl_80A46214:
/* 80A46214  2C 00 00 03 */	cmpwi r0, 3
/* 80A46218  40 80 00 98 */	bge lbl_80A462B0
/* 80A4621C  48 00 00 64 */	b lbl_80A46280
lbl_80A46220:
/* 80A46220  3B E0 00 00 */	li r31, 0
/* 80A46224  38 60 00 55 */	li r3, 0x55
/* 80A46228  4B 70 68 85 */	bl daNpcT_chkEvtBit__FUl
/* 80A4622C  2C 03 00 00 */	cmpwi r3, 0
/* 80A46230  41 82 00 14 */	beq lbl_80A46244
/* 80A46234  38 60 00 40 */	li r3, 0x40
/* 80A46238  4B 70 68 75 */	bl daNpcT_chkEvtBit__FUl
/* 80A4623C  2C 03 00 00 */	cmpwi r3, 0
/* 80A46240  41 82 00 08 */	beq lbl_80A46248
lbl_80A46244:
/* 80A46244  3B E0 00 01 */	li r31, 1
lbl_80A46248:
/* 80A46248  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A4624C  48 00 00 68 */	b lbl_80A462B4
lbl_80A46250:
/* 80A46250  3B E0 00 00 */	li r31, 0
/* 80A46254  38 60 00 40 */	li r3, 0x40
/* 80A46258  4B 70 68 55 */	bl daNpcT_chkEvtBit__FUl
/* 80A4625C  2C 03 00 00 */	cmpwi r3, 0
/* 80A46260  41 82 00 14 */	beq lbl_80A46274
/* 80A46264  38 60 00 44 */	li r3, 0x44
/* 80A46268  4B 70 68 45 */	bl daNpcT_chkEvtBit__FUl
/* 80A4626C  2C 03 00 00 */	cmpwi r3, 0
/* 80A46270  41 82 00 08 */	beq lbl_80A46278
lbl_80A46274:
/* 80A46274  3B E0 00 01 */	li r31, 1
lbl_80A46278:
/* 80A46278  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A4627C  48 00 00 38 */	b lbl_80A462B4
lbl_80A46280:
/* 80A46280  3B E0 00 00 */	li r31, 0
/* 80A46284  38 60 00 44 */	li r3, 0x44
/* 80A46288  4B 70 68 25 */	bl daNpcT_chkEvtBit__FUl
/* 80A4628C  2C 03 00 00 */	cmpwi r3, 0
/* 80A46290  41 82 00 14 */	beq lbl_80A462A4
/* 80A46294  38 60 01 08 */	li r3, 0x108
/* 80A46298  4B 70 68 15 */	bl daNpcT_chkEvtBit__FUl
/* 80A4629C  2C 03 00 00 */	cmpwi r3, 0
/* 80A462A0  41 82 00 08 */	beq lbl_80A462A8
lbl_80A462A4:
/* 80A462A4  3B E0 00 01 */	li r31, 1
lbl_80A462A8:
/* 80A462A8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A462AC  48 00 00 08 */	b lbl_80A462B4
lbl_80A462B0:
/* 80A462B0  38 60 00 00 */	li r3, 0
lbl_80A462B4:
/* 80A462B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A462B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A462BC  7C 08 03 A6 */	mtlr r0
/* 80A462C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A462C4  4E 80 00 20 */	blr 
