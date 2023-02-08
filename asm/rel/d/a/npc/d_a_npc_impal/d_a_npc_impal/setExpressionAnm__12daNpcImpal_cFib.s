lbl_80A08828:
/* 80A08828  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A0882C  7C 08 02 A6 */	mflr r0
/* 80A08830  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A08834  39 61 00 20 */	addi r11, r1, 0x20
/* 80A08838  4B 95 99 9D */	bl _savegpr_27
/* 80A0883C  7C 7F 1B 78 */	mr r31, r3
/* 80A08840  7C 9B 23 78 */	mr r27, r4
/* 80A08844  7C BC 2B 78 */	mr r28, r5
/* 80A08848  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80A0884C  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80A08850  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80A08854  1F BB 00 0C */	mulli r29, r27, 0xc
/* 80A08858  3C 80 80 A1 */	lis r4, l_bckGetParamList@ha /* 0x80A0C544@ha */
/* 80A0885C  38 84 C5 44 */	addi r4, r4, l_bckGetParamList@l /* 0x80A0C544@l */
/* 80A08860  7C A4 E8 2E */	lwzx r5, r4, r29
/* 80A08864  2C 05 00 00 */	cmpwi r5, 0
/* 80A08868  41 80 00 24 */	blt lbl_80A0888C
/* 80A0886C  7C 84 EA 14 */	add r4, r4, r29
/* 80A08870  80 04 00 08 */	lwz r0, 8(r4)
/* 80A08874  54 00 10 3A */	slwi r0, r0, 2
/* 80A08878  3C 80 80 A1 */	lis r4, l_arcNames@ha /* 0x80A0C6C4@ha */
/* 80A0887C  38 84 C6 C4 */	addi r4, r4, l_arcNames@l /* 0x80A0C6C4@l */
/* 80A08880  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A08884  4B 74 A2 A9 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A08888  48 00 00 08 */	b lbl_80A08890
lbl_80A0888C:
/* 80A0888C  38 60 00 00 */	li r3, 0
lbl_80A08890:
/* 80A08890  7C 7E 1B 78 */	mr r30, r3
/* 80A08894  3C 60 80 A1 */	lis r3, l_bckGetParamList@ha /* 0x80A0C544@ha */
/* 80A08898  38 03 C5 44 */	addi r0, r3, l_bckGetParamList@l /* 0x80A0C544@l */
/* 80A0889C  7C 60 EA 14 */	add r3, r0, r29
/* 80A088A0  83 A3 00 04 */	lwz r29, 4(r3)
/* 80A088A4  38 60 00 00 */	li r3, 0
/* 80A088A8  28 1B 00 09 */	cmplwi r27, 9
/* 80A088AC  41 81 01 34 */	bgt lbl_80A089E0
/* 80A088B0  3C 80 80 A1 */	lis r4, lit_4441@ha /* 0x80A0C73C@ha */
/* 80A088B4  38 84 C7 3C */	addi r4, r4, lit_4441@l /* 0x80A0C73C@l */
/* 80A088B8  57 60 10 3A */	slwi r0, r27, 2
/* 80A088BC  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A088C0  7C 09 03 A6 */	mtctr r0
/* 80A088C4  4E 80 04 20 */	bctr 
lbl_80A088C8:
/* 80A088C8  7F E3 FB 78 */	mr r3, r31
/* 80A088CC  38 80 00 00 */	li r4, 0
/* 80A088D0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A088D4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A088D8  7D 89 03 A6 */	mtctr r12
/* 80A088DC  4E 80 04 21 */	bctrl 
/* 80A088E0  48 00 01 04 */	b lbl_80A089E4
lbl_80A088E4:
/* 80A088E4  7F E3 FB 78 */	mr r3, r31
/* 80A088E8  38 80 00 01 */	li r4, 1
/* 80A088EC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A088F0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A088F4  7D 89 03 A6 */	mtctr r12
/* 80A088F8  4E 80 04 21 */	bctrl 
/* 80A088FC  48 00 00 E8 */	b lbl_80A089E4
lbl_80A08900:
/* 80A08900  7F E3 FB 78 */	mr r3, r31
/* 80A08904  38 80 00 02 */	li r4, 2
/* 80A08908  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0890C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A08910  7D 89 03 A6 */	mtctr r12
/* 80A08914  4E 80 04 21 */	bctrl 
/* 80A08918  48 00 00 CC */	b lbl_80A089E4
lbl_80A0891C:
/* 80A0891C  7F E3 FB 78 */	mr r3, r31
/* 80A08920  38 80 00 03 */	li r4, 3
/* 80A08924  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A08928  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0892C  7D 89 03 A6 */	mtctr r12
/* 80A08930  4E 80 04 21 */	bctrl 
/* 80A08934  48 00 00 B0 */	b lbl_80A089E4
lbl_80A08938:
/* 80A08938  7F E3 FB 78 */	mr r3, r31
/* 80A0893C  38 80 00 04 */	li r4, 4
/* 80A08940  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A08944  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A08948  7D 89 03 A6 */	mtctr r12
/* 80A0894C  4E 80 04 21 */	bctrl 
/* 80A08950  48 00 00 94 */	b lbl_80A089E4
lbl_80A08954:
/* 80A08954  7F E3 FB 78 */	mr r3, r31
/* 80A08958  38 80 00 05 */	li r4, 5
/* 80A0895C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A08960  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A08964  7D 89 03 A6 */	mtctr r12
/* 80A08968  4E 80 04 21 */	bctrl 
/* 80A0896C  48 00 00 78 */	b lbl_80A089E4
lbl_80A08970:
/* 80A08970  7F E3 FB 78 */	mr r3, r31
/* 80A08974  38 80 00 06 */	li r4, 6
/* 80A08978  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0897C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A08980  7D 89 03 A6 */	mtctr r12
/* 80A08984  4E 80 04 21 */	bctrl 
/* 80A08988  48 00 00 5C */	b lbl_80A089E4
lbl_80A0898C:
/* 80A0898C  7F E3 FB 78 */	mr r3, r31
/* 80A08990  38 80 00 07 */	li r4, 7
/* 80A08994  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A08998  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A0899C  7D 89 03 A6 */	mtctr r12
/* 80A089A0  4E 80 04 21 */	bctrl 
/* 80A089A4  48 00 00 40 */	b lbl_80A089E4
lbl_80A089A8:
/* 80A089A8  7F E3 FB 78 */	mr r3, r31
/* 80A089AC  38 80 00 08 */	li r4, 8
/* 80A089B0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A089B4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A089B8  7D 89 03 A6 */	mtctr r12
/* 80A089BC  4E 80 04 21 */	bctrl 
/* 80A089C0  48 00 00 24 */	b lbl_80A089E4
lbl_80A089C4:
/* 80A089C4  7F E3 FB 78 */	mr r3, r31
/* 80A089C8  38 80 00 09 */	li r4, 9
/* 80A089CC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A089D0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A089D4  7D 89 03 A6 */	mtctr r12
/* 80A089D8  4E 80 04 21 */	bctrl 
/* 80A089DC  48 00 00 08 */	b lbl_80A089E4
lbl_80A089E0:
/* 80A089E0  3B C0 00 00 */	li r30, 0
lbl_80A089E4:
/* 80A089E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A089E8  40 82 00 0C */	bne lbl_80A089F4
/* 80A089EC  38 60 00 00 */	li r3, 0
/* 80A089F0  48 00 00 60 */	b lbl_80A08A50
lbl_80A089F4:
/* 80A089F4  28 1E 00 00 */	cmplwi r30, 0
/* 80A089F8  40 82 00 0C */	bne lbl_80A08A04
/* 80A089FC  38 60 00 01 */	li r3, 1
/* 80A08A00  48 00 00 50 */	b lbl_80A08A50
lbl_80A08A04:
/* 80A08A04  7F E3 FB 78 */	mr r3, r31
/* 80A08A08  7F C4 F3 78 */	mr r4, r30
/* 80A08A0C  3C A0 80 A1 */	lis r5, lit_4248@ha /* 0x80A0C2F0@ha */
/* 80A08A10  C0 25 C2 F0 */	lfs f1, lit_4248@l(r5)  /* 0x80A0C2F0@l */
/* 80A08A14  7F A5 EB 78 */	mr r5, r29
/* 80A08A18  38 C0 00 00 */	li r6, 0
/* 80A08A1C  38 E0 FF FF */	li r7, -1
/* 80A08A20  7F 88 E3 78 */	mr r8, r28
/* 80A08A24  4B 74 A2 5D */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80A08A28  2C 03 00 00 */	cmpwi r3, 0
/* 80A08A2C  41 82 00 20 */	beq lbl_80A08A4C
/* 80A08A30  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80A08A34  60 00 01 40 */	ori r0, r0, 0x140
/* 80A08A38  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A08A3C  38 00 00 00 */	li r0, 0
/* 80A08A40  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
/* 80A08A44  38 60 00 01 */	li r3, 1
/* 80A08A48  48 00 00 08 */	b lbl_80A08A50
lbl_80A08A4C:
/* 80A08A4C  38 60 00 00 */	li r3, 0
lbl_80A08A50:
/* 80A08A50  39 61 00 20 */	addi r11, r1, 0x20
/* 80A08A54  4B 95 97 CD */	bl _restgpr_27
/* 80A08A58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A08A5C  7C 08 03 A6 */	mtlr r0
/* 80A08A60  38 21 00 20 */	addi r1, r1, 0x20
/* 80A08A64  4E 80 00 20 */	blr 
