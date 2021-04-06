lbl_8030CF44:
/* 8030CF44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CF48  7C 08 02 A6 */	mflr r0
/* 8030CF4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CF50  4B FF FF C1 */	bl getResReference__15J2DResReferenceCFUs
/* 8030CF54  28 03 00 00 */	cmplwi r3, 0
/* 8030CF58  40 82 00 14 */	bne lbl_8030CF6C
/* 8030CF5C  38 00 00 00 */	li r0, 0
/* 8030CF60  3C 60 80 43 */	lis r3, p_name@ha /* 0x804349C0@ha */
/* 8030CF64  9C 03 49 C0 */	stbu r0, p_name@l(r3)  /* 0x804349C0@l */
/* 8030CF68  48 00 01 20 */	b lbl_8030D088
lbl_8030CF6C:
/* 8030CF6C  88 03 00 00 */	lbz r0, 0(r3)
/* 8030CF70  7C 00 07 74 */	extsb r0, r0
/* 8030CF74  2C 00 00 04 */	cmpwi r0, 4
/* 8030CF78  41 82 00 5C */	beq lbl_8030CFD4
/* 8030CF7C  40 80 00 F8 */	bge lbl_8030D074
/* 8030CF80  2C 00 00 02 */	cmpwi r0, 2
/* 8030CF84  40 80 00 08 */	bge lbl_8030CF8C
/* 8030CF88  48 00 00 EC */	b lbl_8030D074
lbl_8030CF8C:
/* 8030CF8C  38 C0 00 00 */	li r6, 0
/* 8030CF90  3C 80 80 43 */	lis r4, p_name@ha /* 0x804349C0@ha */
/* 8030CF94  38 A4 49 C0 */	addi r5, r4, p_name@l /* 0x804349C0@l */
/* 8030CF98  48 00 00 18 */	b lbl_8030CFB0
lbl_8030CF9C:
/* 8030CF9C  38 06 00 02 */	addi r0, r6, 2
/* 8030CFA0  7C 03 00 AE */	lbzx r0, r3, r0
/* 8030CFA4  98 05 00 00 */	stb r0, 0(r5)
/* 8030CFA8  38 C6 00 01 */	addi r6, r6, 1
/* 8030CFAC  38 A5 00 01 */	addi r5, r5, 1
lbl_8030CFB0:
/* 8030CFB0  88 03 00 01 */	lbz r0, 1(r3)
/* 8030CFB4  7C 04 07 74 */	extsb r4, r0
/* 8030CFB8  7C 06 20 00 */	cmpw r6, r4
/* 8030CFBC  41 80 FF E0 */	blt lbl_8030CF9C
/* 8030CFC0  38 00 00 00 */	li r0, 0
/* 8030CFC4  3C 60 80 43 */	lis r3, p_name@ha /* 0x804349C0@ha */
/* 8030CFC8  38 63 49 C0 */	addi r3, r3, p_name@l /* 0x804349C0@l */
/* 8030CFCC  7C 03 21 AE */	stbx r0, r3, r4
/* 8030CFD0  48 00 00 B0 */	b lbl_8030D080
lbl_8030CFD4:
/* 8030CFD4  88 03 00 01 */	lbz r0, 1(r3)
/* 8030CFD8  7C 04 07 74 */	extsb r4, r0
/* 8030CFDC  38 E4 00 01 */	addi r7, r4, 1
/* 8030CFE0  7C 83 3A 14 */	add r4, r3, r7
/* 8030CFE4  38 07 FF FF */	addi r0, r7, -1
/* 8030CFE8  7C 09 03 A6 */	mtctr r0
/* 8030CFEC  2C 07 00 02 */	cmpwi r7, 2
/* 8030CFF0  41 80 00 28 */	blt lbl_8030D018
lbl_8030CFF4:
/* 8030CFF4  88 04 00 00 */	lbz r0, 0(r4)
/* 8030CFF8  7C 00 07 74 */	extsb r0, r0
/* 8030CFFC  2C 00 00 5C */	cmpwi r0, 0x5c
/* 8030D000  41 82 00 18 */	beq lbl_8030D018
/* 8030D004  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8030D008  41 82 00 10 */	beq lbl_8030D018
/* 8030D00C  38 E7 FF FF */	addi r7, r7, -1
/* 8030D010  38 84 FF FF */	addi r4, r4, -1
/* 8030D014  42 00 FF E0 */	bdnz lbl_8030CFF4
lbl_8030D018:
/* 8030D018  39 00 00 00 */	li r8, 0
/* 8030D01C  3C 80 80 43 */	lis r4, p_name@ha /* 0x804349C0@ha */
/* 8030D020  38 04 49 C0 */	addi r0, r4, p_name@l /* 0x804349C0@l */
/* 8030D024  38 E7 00 01 */	addi r7, r7, 1
/* 8030D028  7C A3 3A 14 */	add r5, r3, r7
/* 8030D02C  7C 04 03 78 */	mr r4, r0
/* 8030D030  48 00 00 1C */	b lbl_8030D04C
lbl_8030D034:
/* 8030D034  88 05 00 00 */	lbz r0, 0(r5)
/* 8030D038  98 04 00 00 */	stb r0, 0(r4)
/* 8030D03C  39 08 00 01 */	addi r8, r8, 1
/* 8030D040  38 84 00 01 */	addi r4, r4, 1
/* 8030D044  38 E7 00 01 */	addi r7, r7, 1
/* 8030D048  38 A5 00 01 */	addi r5, r5, 1
lbl_8030D04C:
/* 8030D04C  88 03 00 01 */	lbz r0, 1(r3)
/* 8030D050  7C 06 07 74 */	extsb r6, r0
/* 8030D054  38 06 00 02 */	addi r0, r6, 2
/* 8030D058  7C 07 00 00 */	cmpw r7, r0
/* 8030D05C  41 80 FF D8 */	blt lbl_8030D034
/* 8030D060  38 00 00 00 */	li r0, 0
/* 8030D064  3C 60 80 43 */	lis r3, p_name@ha /* 0x804349C0@ha */
/* 8030D068  38 63 49 C0 */	addi r3, r3, p_name@l /* 0x804349C0@l */
/* 8030D06C  7C 03 41 AE */	stbx r0, r3, r8
/* 8030D070  48 00 00 10 */	b lbl_8030D080
lbl_8030D074:
/* 8030D074  38 00 00 00 */	li r0, 0
/* 8030D078  3C 60 80 43 */	lis r3, p_name@ha /* 0x804349C0@ha */
/* 8030D07C  98 03 49 C0 */	stb r0, p_name@l(r3)  /* 0x804349C0@l */
lbl_8030D080:
/* 8030D080  3C 60 80 43 */	lis r3, p_name@ha /* 0x804349C0@ha */
/* 8030D084  38 63 49 C0 */	addi r3, r3, p_name@l /* 0x804349C0@l */
lbl_8030D088:
/* 8030D088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030D08C  7C 08 03 A6 */	mtlr r0
/* 8030D090  38 21 00 10 */	addi r1, r1, 0x10
/* 8030D094  4E 80 00 20 */	blr 
