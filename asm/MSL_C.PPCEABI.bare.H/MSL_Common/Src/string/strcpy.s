lbl_80368B2C:
/* 80368B2C  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80368B30  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 80368B34  7C 00 28 40 */	cmplw r0, r5
/* 80368B38  7C 67 1B 78 */	mr r7, r3
/* 80368B3C  40 82 00 84 */	bne lbl_80368BC0
/* 80368B40  28 05 00 00 */	cmplwi r5, 0
/* 80368B44  41 82 00 40 */	beq lbl_80368B84
/* 80368B48  88 04 00 00 */	lbz r0, 0(r4)
/* 80368B4C  28 00 00 00 */	cmplwi r0, 0
/* 80368B50  98 07 00 00 */	stb r0, 0(r7)
/* 80368B54  4D 82 00 20 */	beqlr 
/* 80368B58  20 05 00 03 */	subfic r0, r5, 3
/* 80368B5C  7C 09 03 A6 */	mtctr r0
/* 80368B60  28 00 00 00 */	cmplwi r0, 0
/* 80368B64  41 82 00 18 */	beq lbl_80368B7C
lbl_80368B68:
/* 80368B68  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80368B6C  28 00 00 00 */	cmplwi r0, 0
/* 80368B70  9C 07 00 01 */	stbu r0, 1(r7)
/* 80368B74  4D 82 00 20 */	beqlr 
/* 80368B78  42 00 FF F0 */	bdnz lbl_80368B68
lbl_80368B7C:
/* 80368B7C  38 E7 00 01 */	addi r7, r7, 1
/* 80368B80  38 84 00 01 */	addi r4, r4, 1
lbl_80368B84:
/* 80368B84  81 04 00 00 */	lwz r8, 0(r4)
/* 80368B88  3C A0 80 81 */	lis r5, 0x8081 /* 0x80808080@ha */
/* 80368B8C  38 C5 80 80 */	addi r6, r5, 0x8080 /* 0x80808080@l */
/* 80368B90  3C A8 FE FF */	addis r5, r8, 0xfeff
/* 80368B94  38 05 FE FF */	addi r0, r5, -257
/* 80368B98  7C 00 30 39 */	and. r0, r0, r6
/* 80368B9C  40 82 00 24 */	bne lbl_80368BC0
/* 80368BA0  38 E7 FF FC */	addi r7, r7, -4
lbl_80368BA4:
/* 80368BA4  95 07 00 04 */	stwu r8, 4(r7)
/* 80368BA8  85 04 00 04 */	lwzu r8, 4(r4)
/* 80368BAC  3C A8 FE FF */	addis r5, r8, 0xfeff
/* 80368BB0  38 05 FE FF */	addi r0, r5, -257
/* 80368BB4  7C 00 30 39 */	and. r0, r0, r6
/* 80368BB8  41 82 FF EC */	beq lbl_80368BA4
/* 80368BBC  38 E7 00 04 */	addi r7, r7, 4
lbl_80368BC0:
/* 80368BC0  88 04 00 00 */	lbz r0, 0(r4)
/* 80368BC4  28 00 00 00 */	cmplwi r0, 0
/* 80368BC8  98 07 00 00 */	stb r0, 0(r7)
/* 80368BCC  4D 82 00 20 */	beqlr 
lbl_80368BD0:
/* 80368BD0  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80368BD4  28 00 00 00 */	cmplwi r0, 0
/* 80368BD8  9C 07 00 01 */	stbu r0, 1(r7)
/* 80368BDC  40 82 FF F4 */	bne lbl_80368BD0
/* 80368BE0  4E 80 00 20 */	blr 
