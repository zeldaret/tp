lbl_8004A224:
/* 8004A224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004A228  7C 08 02 A6 */	mflr r0
/* 8004A22C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004A230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004A234  7C 7F 1B 78 */	mr r31, r3
/* 8004A238  48 31 1C 95 */	bl GXFlush
/* 8004A23C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8004A240  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8004A244  38 80 00 00 */	li r4, 0
/* 8004A248  48 31 60 05 */	bl GXLoadPosMtxImm
/* 8004A24C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8004A250  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8004A254  38 80 00 00 */	li r4, 0
/* 8004A258  48 31 60 45 */	bl GXLoadNrmMtxImm
/* 8004A25C  48 31 19 11 */	bl GXInvalidateVtxCache
/* 8004A260  38 60 00 00 */	li r3, 0
/* 8004A264  38 80 00 09 */	li r4, 9
/* 8004A268  38 A0 00 01 */	li r5, 1
/* 8004A26C  38 C0 00 04 */	li r6, 4
/* 8004A270  38 E0 00 00 */	li r7, 0
/* 8004A274  48 31 13 51 */	bl GXSetVtxAttrFmt
/* 8004A278  38 60 00 00 */	li r3, 0
/* 8004A27C  38 80 00 0A */	li r4, 0xa
/* 8004A280  38 A0 00 00 */	li r5, 0
/* 8004A284  38 C0 00 04 */	li r6, 4
/* 8004A288  38 E0 00 00 */	li r7, 0
/* 8004A28C  48 31 13 39 */	bl GXSetVtxAttrFmt
/* 8004A290  38 60 00 00 */	li r3, 0
/* 8004A294  38 80 00 0B */	li r4, 0xb
/* 8004A298  38 A0 00 01 */	li r5, 1
/* 8004A29C  38 C0 00 05 */	li r6, 5
/* 8004A2A0  38 E0 00 00 */	li r7, 0
/* 8004A2A4  48 31 13 21 */	bl GXSetVtxAttrFmt
/* 8004A2A8  38 60 00 00 */	li r3, 0
/* 8004A2AC  38 80 00 0D */	li r4, 0xd
/* 8004A2B0  38 A0 00 01 */	li r5, 1
/* 8004A2B4  38 C0 00 04 */	li r6, 4
/* 8004A2B8  38 E0 00 00 */	li r7, 0
/* 8004A2BC  48 31 13 09 */	bl GXSetVtxAttrFmt
/* 8004A2C0  48 31 12 CD */	bl GXClearVtxDesc
/* 8004A2C4  38 60 00 09 */	li r3, 9
/* 8004A2C8  38 80 00 01 */	li r4, 1
/* 8004A2CC  48 31 0B ED */	bl GXSetVtxDesc
/* 8004A2D0  38 60 00 0A */	li r3, 0xa
/* 8004A2D4  38 80 00 01 */	li r4, 1
/* 8004A2D8  48 31 0B E1 */	bl GXSetVtxDesc
/* 8004A2DC  38 60 00 0B */	li r3, 0xb
/* 8004A2E0  38 80 00 01 */	li r4, 1
/* 8004A2E4  48 31 0B D5 */	bl GXSetVtxDesc
/* 8004A2E8  38 60 00 0D */	li r3, 0xd
/* 8004A2EC  38 80 00 01 */	li r4, 1
/* 8004A2F0  48 31 0B C9 */	bl GXSetVtxDesc
/* 8004A2F4  7F E3 FB 78 */	mr r3, r31
/* 8004A2F8  48 23 4C 49 */	bl getDrawCount__14JPABaseEmitterCFv
/* 8004A2FC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8004A300  2C 00 00 02 */	cmpwi r0, 2
/* 8004A304  41 82 00 20 */	beq lbl_8004A324
/* 8004A308  40 80 00 24 */	bge lbl_8004A32C
/* 8004A30C  2C 00 00 01 */	cmpwi r0, 1
/* 8004A310  40 80 00 08 */	bge lbl_8004A318
/* 8004A314  48 00 00 18 */	b lbl_8004A32C
lbl_8004A318:
/* 8004A318  7F E3 FB 78 */	mr r3, r31
/* 8004A31C  4B FF F9 05 */	bl drawFirst_l8__FP14JPABaseEmitter
/* 8004A320  48 00 00 0C */	b lbl_8004A32C
lbl_8004A324:
/* 8004A324  7F E3 FB 78 */	mr r3, r31
/* 8004A328  4B FF FB 19 */	bl drawSecond_b_light8__FP14JPABaseEmitter
lbl_8004A32C:
/* 8004A32C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004A330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004A334  7C 08 03 A6 */	mtlr r0
/* 8004A338  38 21 00 10 */	addi r1, r1, 0x10
/* 8004A33C  4E 80 00 20 */	blr 
