lbl_80C9E614:
/* 80C9E614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9E618  7C 08 02 A6 */	mflr r0
/* 80C9E61C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9E624  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9E628  7C 7F 1B 78 */	mr r31, r3
/* 80C9E62C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C9E630  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C9E634  40 82 00 AC */	bne lbl_80C9E6E0
/* 80C9E638  7F E0 FB 79 */	or. r0, r31, r31
/* 80C9E63C  41 82 00 98 */	beq lbl_80C9E6D4
/* 80C9E640  7C 1E 03 78 */	mr r30, r0
/* 80C9E644  4B 3D 9F E0 */	b __ct__16dBgS_MoveBgActorFv
/* 80C9E648  3C 60 80 CA */	lis r3, __vt__12daObjStair_c@ha
/* 80C9E64C  38 03 EA 7C */	addi r0, r3, __vt__12daObjStair_c@l
/* 80C9E650  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C9E654  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C9E658  3C 80 80 CA */	lis r4, __defctor__19dPa_followEcallBackFv@ha
/* 80C9E65C  38 84 E7 8C */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l
/* 80C9E660  3C A0 80 CA */	lis r5, __dt__19dPa_followEcallBackFv@ha
/* 80C9E664  38 A5 E7 04 */	addi r5, r5, __dt__19dPa_followEcallBackFv@l
/* 80C9E668  38 C0 00 14 */	li r6, 0x14
/* 80C9E66C  38 E0 00 02 */	li r7, 2
/* 80C9E670  4B 6C 36 F0 */	b __construct_array
/* 80C9E674  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80C9E678  3C 80 80 CA */	lis r4, __defctor__19dPa_followEcallBackFv@ha
/* 80C9E67C  38 84 E7 8C */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l
/* 80C9E680  3C A0 80 CA */	lis r5, __dt__19dPa_followEcallBackFv@ha
/* 80C9E684  38 A5 E7 04 */	addi r5, r5, __dt__19dPa_followEcallBackFv@l
/* 80C9E688  38 C0 00 14 */	li r6, 0x14
/* 80C9E68C  38 E0 00 02 */	li r7, 2
/* 80C9E690  4B 6C 36 D0 */	b __construct_array
/* 80C9E694  38 7E 06 00 */	addi r3, r30, 0x600
/* 80C9E698  3C 80 80 CA */	lis r4, __ct__4cXyzFv@ha
/* 80C9E69C  38 84 E7 00 */	addi r4, r4, __ct__4cXyzFv@l
/* 80C9E6A0  3C A0 80 CA */	lis r5, __dt__4cXyzFv@ha
/* 80C9E6A4  38 A5 DE DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80C9E6A8  38 C0 00 0C */	li r6, 0xc
/* 80C9E6AC  38 E0 00 02 */	li r7, 2
/* 80C9E6B0  4B 6C 36 B0 */	b __construct_array
/* 80C9E6B4  38 7E 06 18 */	addi r3, r30, 0x618
/* 80C9E6B8  3C 80 80 CA */	lis r4, __ct__4cXyzFv@ha
/* 80C9E6BC  38 84 E7 00 */	addi r4, r4, __ct__4cXyzFv@l
/* 80C9E6C0  3C A0 80 CA */	lis r5, __dt__4cXyzFv@ha
/* 80C9E6C4  38 A5 DE DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80C9E6C8  38 C0 00 0C */	li r6, 0xc
/* 80C9E6CC  38 E0 00 02 */	li r7, 2
/* 80C9E6D0  4B 6C 36 90 */	b __construct_array
lbl_80C9E6D4:
/* 80C9E6D4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C9E6D8  60 00 00 08 */	ori r0, r0, 8
/* 80C9E6DC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C9E6E0:
/* 80C9E6E0  7F E3 FB 78 */	mr r3, r31
/* 80C9E6E4  4B FF EC 55 */	bl create1st__12daObjStair_cFv
/* 80C9E6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9E6EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9E6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9E6F4  7C 08 03 A6 */	mtlr r0
/* 80C9E6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9E6FC  4E 80 00 20 */	blr 
