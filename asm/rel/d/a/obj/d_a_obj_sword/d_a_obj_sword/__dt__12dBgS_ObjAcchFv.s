lbl_80CFD9A4:
/* 80CFD9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD9A8  7C 08 02 A6 */	mflr r0
/* 80CFD9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD9B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFD9B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFD9B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CFD9BC  7C 9F 23 78 */	mr r31, r4
/* 80CFD9C0  41 82 00 38 */	beq lbl_80CFD9F8
/* 80CFD9C4  3C 80 80 D0 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CFDFE4@ha */
/* 80CFD9C8  38 84 DF E4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CFDFE4@l */
/* 80CFD9CC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CFD9D0  38 04 00 0C */	addi r0, r4, 0xc
/* 80CFD9D4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CFD9D8  38 04 00 18 */	addi r0, r4, 0x18
/* 80CFD9DC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CFD9E0  38 80 00 00 */	li r4, 0
/* 80CFD9E4  4B 37 85 B1 */	bl __dt__9dBgS_AcchFv
/* 80CFD9E8  7F E0 07 35 */	extsh. r0, r31
/* 80CFD9EC  40 81 00 0C */	ble lbl_80CFD9F8
/* 80CFD9F0  7F C3 F3 78 */	mr r3, r30
/* 80CFD9F4  4B 5D 13 49 */	bl __dl__FPv
lbl_80CFD9F8:
/* 80CFD9F8  7F C3 F3 78 */	mr r3, r30
/* 80CFD9FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFDA00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFDA04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDA08  7C 08 03 A6 */	mtlr r0
/* 80CFDA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDA10  4E 80 00 20 */	blr 
