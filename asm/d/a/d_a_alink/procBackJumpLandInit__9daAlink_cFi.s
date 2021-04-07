lbl_800C5A54:
/* 800C5A54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C5A58  7C 08 02 A6 */	mflr r0
/* 800C5A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C5A60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C5A64  93 C1 00 08 */	stw r30, 8(r1)
/* 800C5A68  7C 7E 1B 78 */	mr r30, r3
/* 800C5A6C  7C 9F 23 78 */	mr r31, r4
/* 800C5A70  38 80 00 13 */	li r4, 0x13
/* 800C5A74  4B FF C4 F9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C5A78  7F C3 F3 78 */	mr r3, r30
/* 800C5A7C  38 80 00 27 */	li r4, 0x27
/* 800C5A80  3C A0 80 39 */	lis r5, m__22daAlinkHIO_backJump_c0@ha /* 0x8038D82C@ha */
/* 800C5A84  38 A5 D8 2C */	addi r5, r5, m__22daAlinkHIO_backJump_c0@l /* 0x8038D82C@l */
/* 800C5A88  38 A5 00 14 */	addi r5, r5, 0x14
/* 800C5A8C  4B FE 76 69 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C5A90  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C5A94  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C5A98  38 00 00 04 */	li r0, 4
/* 800C5A9C  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 800C5AA0  7F C3 F3 78 */	mr r3, r30
/* 800C5AA4  38 80 00 02 */	li r4, 2
/* 800C5AA8  48 05 B7 19 */	bl setFootEffectProcType__9daAlink_cFi
/* 800C5AAC  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 800C5AB0  60 00 00 30 */	ori r0, r0, 0x30
/* 800C5AB4  90 1E 05 84 */	stw r0, 0x584(r30)
/* 800C5AB8  93 FE 31 98 */	stw r31, 0x3198(r30)
/* 800C5ABC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C5AC0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800C5AC4  38 00 00 0A */	li r0, 0xa
/* 800C5AC8  98 1E 2F CC */	stb r0, 0x2fcc(r30)
/* 800C5ACC  7F C3 F3 78 */	mr r3, r30
/* 800C5AD0  4B FF 01 95 */	bl setStepLandVibration__9daAlink_cFv
/* 800C5AD4  38 60 00 01 */	li r3, 1
/* 800C5AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C5ADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C5AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C5AE4  7C 08 03 A6 */	mtlr r0
/* 800C5AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 800C5AEC  4E 80 00 20 */	blr 
