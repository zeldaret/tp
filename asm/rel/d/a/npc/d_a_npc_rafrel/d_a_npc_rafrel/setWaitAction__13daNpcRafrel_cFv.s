lbl_80ABADC4:
/* 80ABADC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ABADC8  7C 08 02 A6 */	mflr r0
/* 80ABADCC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ABADD0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80ABADD4  7C 7F 1B 78 */	mr r31, r3
/* 80ABADD8  3C 60 80 AC */	lis r3, cNullVec__6Z2Calc@ha /* 0x80ABFE80@ha */
/* 80ABADDC  38 83 FE 80 */	addi r4, r3, cNullVec__6Z2Calc@l /* 0x80ABFE80@l */
/* 80ABADE0  88 1F 0E 17 */	lbz r0, 0xe17(r31)
/* 80ABADE4  2C 00 00 01 */	cmpwi r0, 1
/* 80ABADE8  41 82 00 AC */	beq lbl_80ABAE94
/* 80ABADEC  40 80 00 10 */	bge lbl_80ABADFC
/* 80ABADF0  2C 00 00 00 */	cmpwi r0, 0
/* 80ABADF4  40 80 00 14 */	bge lbl_80ABAE08
/* 80ABADF8  48 00 01 B0 */	b lbl_80ABAFA8
lbl_80ABADFC:
/* 80ABADFC  2C 00 00 03 */	cmpwi r0, 3
/* 80ABAE00  40 80 01 A8 */	bge lbl_80ABAFA8
/* 80ABAE04  48 00 01 1C */	b lbl_80ABAF20
lbl_80ABAE08:
/* 80ABAE08  80 64 03 04 */	lwz r3, 0x304(r4)
/* 80ABAE0C  80 04 03 08 */	lwz r0, 0x308(r4)
/* 80ABAE10  90 61 00 20 */	stw r3, 0x20(r1)
/* 80ABAE14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ABAE18  80 04 03 0C */	lwz r0, 0x30c(r4)
/* 80ABAE1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ABAE20  38 00 00 03 */	li r0, 3
/* 80ABAE24  B0 1F 0E 10 */	sth r0, 0xe10(r31)
/* 80ABAE28  38 7F 0D E0 */	addi r3, r31, 0xde0
/* 80ABAE2C  4B 8A 71 ED */	bl __ptmf_test
/* 80ABAE30  2C 03 00 00 */	cmpwi r3, 0
/* 80ABAE34  41 82 00 18 */	beq lbl_80ABAE4C
/* 80ABAE38  7F E3 FB 78 */	mr r3, r31
/* 80ABAE3C  38 80 00 00 */	li r4, 0
/* 80ABAE40  39 9F 0D E0 */	addi r12, r31, 0xde0
/* 80ABAE44  4B 8A 72 41 */	bl __ptmf_scall
/* 80ABAE48  60 00 00 00 */	nop 
lbl_80ABAE4C:
/* 80ABAE4C  38 00 00 00 */	li r0, 0
/* 80ABAE50  B0 1F 0E 10 */	sth r0, 0xe10(r31)
/* 80ABAE54  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80ABAE58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABAE5C  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80ABAE60  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80ABAE64  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80ABAE68  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 80ABAE6C  38 7F 0D E0 */	addi r3, r31, 0xde0
/* 80ABAE70  4B 8A 71 A9 */	bl __ptmf_test
/* 80ABAE74  2C 03 00 00 */	cmpwi r3, 0
/* 80ABAE78  41 82 01 30 */	beq lbl_80ABAFA8
/* 80ABAE7C  7F E3 FB 78 */	mr r3, r31
/* 80ABAE80  38 80 00 00 */	li r4, 0
/* 80ABAE84  39 9F 0D E0 */	addi r12, r31, 0xde0
/* 80ABAE88  4B 8A 71 FD */	bl __ptmf_scall
/* 80ABAE8C  60 00 00 00 */	nop 
/* 80ABAE90  48 00 01 18 */	b lbl_80ABAFA8
lbl_80ABAE94:
/* 80ABAE94  80 64 03 10 */	lwz r3, 0x310(r4)
/* 80ABAE98  80 04 03 14 */	lwz r0, 0x314(r4)
/* 80ABAE9C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ABAEA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ABAEA4  80 04 03 18 */	lwz r0, 0x318(r4)
/* 80ABAEA8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABAEAC  38 00 00 03 */	li r0, 3
/* 80ABAEB0  B0 1F 0E 10 */	sth r0, 0xe10(r31)
/* 80ABAEB4  38 7F 0D E0 */	addi r3, r31, 0xde0
/* 80ABAEB8  4B 8A 71 61 */	bl __ptmf_test
/* 80ABAEBC  2C 03 00 00 */	cmpwi r3, 0
/* 80ABAEC0  41 82 00 18 */	beq lbl_80ABAED8
/* 80ABAEC4  7F E3 FB 78 */	mr r3, r31
/* 80ABAEC8  38 80 00 00 */	li r4, 0
/* 80ABAECC  39 9F 0D E0 */	addi r12, r31, 0xde0
/* 80ABAED0  4B 8A 71 B5 */	bl __ptmf_scall
/* 80ABAED4  60 00 00 00 */	nop 
lbl_80ABAED8:
/* 80ABAED8  38 00 00 00 */	li r0, 0
/* 80ABAEDC  B0 1F 0E 10 */	sth r0, 0xe10(r31)
/* 80ABAEE0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80ABAEE4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ABAEE8  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80ABAEEC  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80ABAEF0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ABAEF4  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 80ABAEF8  38 7F 0D E0 */	addi r3, r31, 0xde0
/* 80ABAEFC  4B 8A 71 1D */	bl __ptmf_test
/* 80ABAF00  2C 03 00 00 */	cmpwi r3, 0
/* 80ABAF04  41 82 00 A4 */	beq lbl_80ABAFA8
/* 80ABAF08  7F E3 FB 78 */	mr r3, r31
/* 80ABAF0C  38 80 00 00 */	li r4, 0
/* 80ABAF10  39 9F 0D E0 */	addi r12, r31, 0xde0
/* 80ABAF14  4B 8A 71 71 */	bl __ptmf_scall
/* 80ABAF18  60 00 00 00 */	nop 
/* 80ABAF1C  48 00 00 8C */	b lbl_80ABAFA8
lbl_80ABAF20:
/* 80ABAF20  80 64 03 1C */	lwz r3, 0x31c(r4)
/* 80ABAF24  80 04 03 20 */	lwz r0, 0x320(r4)
/* 80ABAF28  90 61 00 08 */	stw r3, 8(r1)
/* 80ABAF2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ABAF30  80 04 03 24 */	lwz r0, 0x324(r4)
/* 80ABAF34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ABAF38  38 00 00 03 */	li r0, 3
/* 80ABAF3C  B0 1F 0E 10 */	sth r0, 0xe10(r31)
/* 80ABAF40  38 7F 0D E0 */	addi r3, r31, 0xde0
/* 80ABAF44  4B 8A 70 D5 */	bl __ptmf_test
/* 80ABAF48  2C 03 00 00 */	cmpwi r3, 0
/* 80ABAF4C  41 82 00 18 */	beq lbl_80ABAF64
/* 80ABAF50  7F E3 FB 78 */	mr r3, r31
/* 80ABAF54  38 80 00 00 */	li r4, 0
/* 80ABAF58  39 9F 0D E0 */	addi r12, r31, 0xde0
/* 80ABAF5C  4B 8A 71 29 */	bl __ptmf_scall
/* 80ABAF60  60 00 00 00 */	nop 
lbl_80ABAF64:
/* 80ABAF64  38 00 00 00 */	li r0, 0
/* 80ABAF68  B0 1F 0E 10 */	sth r0, 0xe10(r31)
/* 80ABAF6C  80 61 00 08 */	lwz r3, 8(r1)
/* 80ABAF70  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ABAF74  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80ABAF78  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80ABAF7C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80ABAF80  90 1F 0D E8 */	stw r0, 0xde8(r31)
/* 80ABAF84  38 7F 0D E0 */	addi r3, r31, 0xde0
/* 80ABAF88  4B 8A 70 91 */	bl __ptmf_test
/* 80ABAF8C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABAF90  41 82 00 18 */	beq lbl_80ABAFA8
/* 80ABAF94  7F E3 FB 78 */	mr r3, r31
/* 80ABAF98  38 80 00 00 */	li r4, 0
/* 80ABAF9C  39 9F 0D E0 */	addi r12, r31, 0xde0
/* 80ABAFA0  4B 8A 70 E5 */	bl __ptmf_scall
/* 80ABAFA4  60 00 00 00 */	nop 
lbl_80ABAFA8:
/* 80ABAFA8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80ABAFAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ABAFB0  7C 08 03 A6 */	mtlr r0
/* 80ABAFB4  38 21 00 40 */	addi r1, r1, 0x40
/* 80ABAFB8  4E 80 00 20 */	blr 
