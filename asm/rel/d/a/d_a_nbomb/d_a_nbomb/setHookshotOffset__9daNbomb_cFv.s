lbl_804C87F0:
/* 804C87F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C87F4  7C 08 02 A6 */	mflr r0
/* 804C87F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C87FC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804C8800  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804C8804  7C 7E 1B 78 */	mr r30, r3
/* 804C8808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C880C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C8810  83 E3 5D B4 */	lwz r31, 0x5db4(r3)
/* 804C8814  38 61 00 14 */	addi r3, r1, 0x14
/* 804C8818  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804C881C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804C8820  4B D9 E3 14 */	b __mi__4cXyzCFRC3Vec
/* 804C8824  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804C8828  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C882C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804C8830  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C8834  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804C8838  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C883C  3C 60 80 4D */	lis r3, lit_4255@ha
/* 804C8840  C0 03 C3 80 */	lfs f0, lit_4255@l(r3)
/* 804C8844  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C8848  38 61 00 08 */	addi r3, r1, 8
/* 804C884C  38 81 00 20 */	addi r4, r1, 0x20
/* 804C8850  4B D9 E6 F8 */	b normalizeZP__4cXyzFv
/* 804C8854  38 61 00 20 */	addi r3, r1, 0x20
/* 804C8858  7C 64 1B 78 */	mr r4, r3
/* 804C885C  3C A0 80 4D */	lis r5, lit_4678@ha
/* 804C8860  C0 25 C3 B0 */	lfs f1, lit_4678@l(r5)
/* 804C8864  4B E7 E8 74 */	b PSVECScale
/* 804C8868  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 804C886C  3C 60 80 4D */	lis r3, lit_4678@ha
/* 804C8870  C0 03 C3 B0 */	lfs f0, lit_4678@l(r3)
/* 804C8874  EC 01 00 2A */	fadds f0, f1, f0
/* 804C8878  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C887C  7F E3 FB 78 */	mr r3, r31
/* 804C8880  28 1E 00 00 */	cmplwi r30, 0
/* 804C8884  41 82 00 0C */	beq lbl_804C8890
/* 804C8888  80 9E 00 04 */	lwz r4, 4(r30)
/* 804C888C  48 00 00 08 */	b lbl_804C8894
lbl_804C8890:
/* 804C8890  38 80 FF FF */	li r4, -1
lbl_804C8894:
/* 804C8894  38 A1 00 20 */	addi r5, r1, 0x20
/* 804C8898  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804C889C  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 804C88A0  7D 89 03 A6 */	mtctr r12
/* 804C88A4  4E 80 04 21 */	bctrl 
/* 804C88A8  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C88AC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 804C88B0  90 1E 0B 4C */	stw r0, 0xb4c(r30)
/* 804C88B4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804C88B8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804C88BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C88C0  7C 08 03 A6 */	mtlr r0
/* 804C88C4  38 21 00 40 */	addi r1, r1, 0x40
/* 804C88C8  4E 80 00 20 */	blr 
