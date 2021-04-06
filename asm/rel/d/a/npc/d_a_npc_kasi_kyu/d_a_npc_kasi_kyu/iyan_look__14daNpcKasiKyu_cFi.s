lbl_80A24774:
/* 80A24774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A24778  7C 08 02 A6 */	mflr r0
/* 80A2477C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A24780  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A24784  7C 7F 1B 78 */	mr r31, r3
/* 80A24788  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A2478C  2C 00 00 00 */	cmpwi r0, 0
/* 80A24790  41 82 00 18 */	beq lbl_80A247A8
/* 80A24794  40 80 00 08 */	bge lbl_80A2479C
/* 80A24798  48 00 00 9C */	b lbl_80A24834
lbl_80A2479C:
/* 80A2479C  2C 00 00 02 */	cmpwi r0, 2
/* 80A247A0  40 80 00 94 */	bge lbl_80A24834
/* 80A247A4  48 00 00 50 */	b lbl_80A247F4
lbl_80A247A8:
/* 80A247A8  38 80 00 01 */	li r4, 1
/* 80A247AC  3C A0 80 A2 */	lis r5, lit_4249@ha /* 0x80A25944@ha */
/* 80A247B0  C0 25 59 44 */	lfs f1, lit_4249@l(r5)  /* 0x80A25944@l */
/* 80A247B4  38 A0 00 00 */	li r5, 0
/* 80A247B8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A247BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A247C0  7D 89 03 A6 */	mtctr r12
/* 80A247C4  4E 80 04 21 */	bctrl 
/* 80A247C8  3C 60 80 A2 */	lis r3, lit_4449@ha /* 0x80A2595C@ha */
/* 80A247CC  C0 03 59 5C */	lfs f0, lit_4449@l(r3)  /* 0x80A2595C@l */
/* 80A247D0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A247D4  7F E3 FB 78 */	mr r3, r31
/* 80A247D8  38 80 00 00 */	li r4, 0
/* 80A247DC  4B FF EB 51 */	bl setLookMode__14daNpcKasiKyu_cFi
/* 80A247E0  38 00 00 56 */	li r0, 0x56
/* 80A247E4  90 1F 14 60 */	stw r0, 0x1460(r31)
/* 80A247E8  38 00 00 01 */	li r0, 1
/* 80A247EC  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A247F0  48 00 00 44 */	b lbl_80A24834
lbl_80A247F4:
/* 80A247F4  80 9F 14 60 */	lwz r4, 0x1460(r31)
/* 80A247F8  38 04 FF FF */	addi r0, r4, -1
/* 80A247FC  90 1F 14 60 */	stw r0, 0x1460(r31)
/* 80A24800  80 1F 14 60 */	lwz r0, 0x1460(r31)
/* 80A24804  2C 00 00 00 */	cmpwi r0, 0
/* 80A24808  40 82 00 2C */	bne lbl_80A24834
/* 80A2480C  3C 80 80 A2 */	lis r4, lit_5237@ha /* 0x80A25EB8@ha */
/* 80A24810  38 A4 5E B8 */	addi r5, r4, lit_5237@l /* 0x80A25EB8@l */
/* 80A24814  80 85 00 00 */	lwz r4, 0(r5)
/* 80A24818  80 05 00 04 */	lwz r0, 4(r5)
/* 80A2481C  90 81 00 08 */	stw r4, 8(r1)
/* 80A24820  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A24824  80 05 00 08 */	lwz r0, 8(r5)
/* 80A24828  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A2482C  38 81 00 08 */	addi r4, r1, 8
/* 80A24830  4B FF EA 55 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
lbl_80A24834:
/* 80A24834  38 60 00 01 */	li r3, 1
/* 80A24838  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A2483C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A24840  7C 08 03 A6 */	mtlr r0
/* 80A24844  38 21 00 20 */	addi r1, r1, 0x20
/* 80A24848  4E 80 00 20 */	blr 
