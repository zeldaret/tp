lbl_80CA69A4:
/* 80CA69A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA69A8  7C 08 02 A6 */	mflr r0
/* 80CA69AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA69B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA69B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA69B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CA69BC  7C 9F 23 78 */	mr r31, r4
/* 80CA69C0  41 82 00 38 */	beq lbl_80CA69F8
/* 80CA69C4  3C 60 80 CA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CA7A70@ha */
/* 80CA69C8  38 03 7A 70 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CA7A70@l */
/* 80CA69CC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CA69D0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CA69D4  38 80 FF FF */	li r4, -1
/* 80CA69D8  4B 5C 85 41 */	bl __dt__8cM3dGCirFv
/* 80CA69DC  7F C3 F3 78 */	mr r3, r30
/* 80CA69E0  38 80 00 00 */	li r4, 0
/* 80CA69E4  4B 5C 16 CD */	bl __dt__13cBgS_PolyInfoFv
/* 80CA69E8  7F E0 07 35 */	extsh. r0, r31
/* 80CA69EC  40 81 00 0C */	ble lbl_80CA69F8
/* 80CA69F0  7F C3 F3 78 */	mr r3, r30
/* 80CA69F4  4B 62 83 49 */	bl __dl__FPv
lbl_80CA69F8:
/* 80CA69F8  7F C3 F3 78 */	mr r3, r30
/* 80CA69FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA6A00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA6A04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6A08  7C 08 03 A6 */	mtlr r0
/* 80CA6A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6A10  4E 80 00 20 */	blr 
