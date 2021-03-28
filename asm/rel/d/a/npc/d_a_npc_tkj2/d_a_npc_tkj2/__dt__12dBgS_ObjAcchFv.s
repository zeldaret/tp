lbl_80B141AC:
/* 80B141AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B141B0  7C 08 02 A6 */	mflr r0
/* 80B141B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B141B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B141BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B141C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B141C4  7C 9F 23 78 */	mr r31, r4
/* 80B141C8  41 82 00 38 */	beq lbl_80B14200
/* 80B141CC  3C 80 80 B1 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80B141D0  38 84 44 7C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80B141D4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B141D8  38 04 00 0C */	addi r0, r4, 0xc
/* 80B141DC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B141E0  38 04 00 18 */	addi r0, r4, 0x18
/* 80B141E4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B141E8  38 80 00 00 */	li r4, 0
/* 80B141EC  4B 56 1D A8 */	b __dt__9dBgS_AcchFv
/* 80B141F0  7F E0 07 35 */	extsh. r0, r31
/* 80B141F4  40 81 00 0C */	ble lbl_80B14200
/* 80B141F8  7F C3 F3 78 */	mr r3, r30
/* 80B141FC  4B 7B AB 40 */	b __dl__FPv
lbl_80B14200:
/* 80B14200  7F C3 F3 78 */	mr r3, r30
/* 80B14204  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B14208  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1420C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B14210  7C 08 03 A6 */	mtlr r0
/* 80B14214  38 21 00 10 */	addi r1, r1, 0x10
/* 80B14218  4E 80 00 20 */	blr 
