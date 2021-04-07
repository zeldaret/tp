lbl_80AF8B7C:
/* 80AF8B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF8B80  7C 08 02 A6 */	mflr r0
/* 80AF8B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF8B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF8B8C  7C 7F 1B 78 */	mr r31, r3
/* 80AF8B90  A0 03 0E 1A */	lhz r0, 0xe1a(r3)
/* 80AF8B94  2C 00 00 02 */	cmpwi r0, 2
/* 80AF8B98  41 82 00 D0 */	beq lbl_80AF8C68
/* 80AF8B9C  40 80 01 10 */	bge lbl_80AF8CAC
/* 80AF8BA0  2C 00 00 00 */	cmpwi r0, 0
/* 80AF8BA4  41 82 00 10 */	beq lbl_80AF8BB4
/* 80AF8BA8  40 80 00 14 */	bge lbl_80AF8BBC
/* 80AF8BAC  48 00 01 00 */	b lbl_80AF8CAC
/* 80AF8BB0  48 00 00 FC */	b lbl_80AF8CAC
lbl_80AF8BB4:
/* 80AF8BB4  38 00 00 00 */	li r0, 0
/* 80AF8BB8  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_80AF8BBC:
/* 80AF8BBC  88 1F 0E 1E */	lbz r0, 0xe1e(r31)
/* 80AF8BC0  28 00 00 02 */	cmplwi r0, 2
/* 80AF8BC4  40 82 00 4C */	bne lbl_80AF8C10
/* 80AF8BC8  7F E3 FB 78 */	mr r3, r31
/* 80AF8BCC  38 80 00 08 */	li r4, 8
/* 80AF8BD0  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF8BD4  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF8BD8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8BDC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AF8BE0  7D 89 03 A6 */	mtctr r12
/* 80AF8BE4  4E 80 04 21 */	bctrl 
/* 80AF8BE8  7F E3 FB 78 */	mr r3, r31
/* 80AF8BEC  38 80 00 08 */	li r4, 8
/* 80AF8BF0  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF8BF4  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF8BF8  38 A0 00 00 */	li r5, 0
/* 80AF8BFC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8C00  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF8C04  7D 89 03 A6 */	mtctr r12
/* 80AF8C08  4E 80 04 21 */	bctrl 
/* 80AF8C0C  48 00 00 48 */	b lbl_80AF8C54
lbl_80AF8C10:
/* 80AF8C10  7F E3 FB 78 */	mr r3, r31
/* 80AF8C14  38 80 00 0B */	li r4, 0xb
/* 80AF8C18  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF8C1C  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF8C20  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8C24  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AF8C28  7D 89 03 A6 */	mtctr r12
/* 80AF8C2C  4E 80 04 21 */	bctrl 
/* 80AF8C30  7F E3 FB 78 */	mr r3, r31
/* 80AF8C34  38 80 00 00 */	li r4, 0
/* 80AF8C38  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF8C3C  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF8C40  38 A0 00 00 */	li r5, 0
/* 80AF8C44  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8C48  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF8C4C  7D 89 03 A6 */	mtctr r12
/* 80AF8C50  4E 80 04 21 */	bctrl 
lbl_80AF8C54:
/* 80AF8C54  38 00 00 00 */	li r0, 0
/* 80AF8C58  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80AF8C5C  38 00 00 02 */	li r0, 2
/* 80AF8C60  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AF8C64  48 00 00 48 */	b lbl_80AF8CAC
lbl_80AF8C68:
/* 80AF8C68  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AF8C6C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AF8C70  7C 00 20 00 */	cmpw r0, r4
/* 80AF8C74  41 82 00 24 */	beq lbl_80AF8C98
/* 80AF8C78  38 A0 FF FF */	li r5, -1
/* 80AF8C7C  38 C0 FF FF */	li r6, -1
/* 80AF8C80  38 E0 00 0F */	li r7, 0xf
/* 80AF8C84  4B 65 B4 21 */	bl step__8daNpcF_cFsiii
/* 80AF8C88  2C 03 00 00 */	cmpwi r3, 0
/* 80AF8C8C  41 82 00 0C */	beq lbl_80AF8C98
/* 80AF8C90  38 00 00 01 */	li r0, 1
/* 80AF8C94  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
lbl_80AF8C98:
/* 80AF8C98  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80AF8C9C  2C 00 00 04 */	cmpwi r0, 4
/* 80AF8CA0  41 82 00 0C */	beq lbl_80AF8CAC
/* 80AF8CA4  38 00 00 04 */	li r0, 4
/* 80AF8CA8  B0 1F 0E 18 */	sth r0, 0xe18(r31)
lbl_80AF8CAC:
/* 80AF8CAC  38 60 00 01 */	li r3, 1
/* 80AF8CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF8CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF8CB8  7C 08 03 A6 */	mtlr r0
/* 80AF8CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF8CC0  4E 80 00 20 */	blr 
