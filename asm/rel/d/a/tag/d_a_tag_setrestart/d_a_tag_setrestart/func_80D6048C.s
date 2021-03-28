lbl_80D6048C:
/* 80D6048C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60490  7C 08 02 A6 */	mflr r0
/* 80D60494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D6049C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D604A0  7C 7F 1B 78 */	mr r31, r3
/* 80D604A4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D604A8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D604AC  40 82 00 40 */	bne lbl_80D604EC
/* 80D604B0  7F E0 FB 79 */	or. r0, r31, r31
/* 80D604B4  41 82 00 2C */	beq lbl_80D604E0
/* 80D604B8  7C 1E 03 78 */	mr r30, r0
/* 80D604BC  4B 2B 86 A8 */	b __ct__10fopAc_ac_cFv
/* 80D604C0  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80D604C4  3C 80 80 D6 */	lis r4, __ct__4cXyzFv@ha
/* 80D604C8  38 84 05 5C */	addi r4, r4, __ct__4cXyzFv@l
/* 80D604CC  3C A0 80 D6 */	lis r5, __dt__4cXyzFv@ha
/* 80D604D0  38 A5 05 20 */	addi r5, r5, __dt__4cXyzFv@l
/* 80D604D4  38 C0 00 0C */	li r6, 0xc
/* 80D604D8  38 E0 00 04 */	li r7, 4
/* 80D604DC  4B 60 18 84 */	b __construct_array
lbl_80D604E0:
/* 80D604E0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D604E4  60 00 00 08 */	ori r0, r0, 8
/* 80D604E8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D604EC:
/* 80D604EC  7F E3 FB 78 */	mr r3, r31
/* 80D604F0  4B FF FF 09 */	bl Create__14daTagRestart_cFv
/* 80D604F4  2C 03 00 00 */	cmpwi r3, 0
/* 80D604F8  40 82 00 0C */	bne lbl_80D60504
/* 80D604FC  38 60 00 05 */	li r3, 5
/* 80D60500  48 00 00 08 */	b lbl_80D60508
lbl_80D60504:
/* 80D60504  38 60 00 04 */	li r3, 4
lbl_80D60508:
/* 80D60508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D6050C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D60510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60514  7C 08 03 A6 */	mtlr r0
/* 80D60518  38 21 00 10 */	addi r1, r1, 0x10
/* 80D6051C  4E 80 00 20 */	blr 
