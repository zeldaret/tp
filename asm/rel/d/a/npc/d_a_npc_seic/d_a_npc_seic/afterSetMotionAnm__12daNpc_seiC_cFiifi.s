lbl_80AC8080:
/* 80AC8080  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC8084  7C 08 02 A6 */	mflr r0
/* 80AC8088  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC808C  39 61 00 30 */	addi r11, r1, 0x30
/* 80AC8090  4B 89 A1 3D */	bl _savegpr_25
/* 80AC8094  7C 7A 1B 78 */	mr r26, r3
/* 80AC8098  7C BB 2B 78 */	mr r27, r5
/* 80AC809C  3C A0 80 AD */	lis r5, cNullVec__6Z2Calc@ha /* 0x80AC92F0@ha */
/* 80AC80A0  3B E5 92 F0 */	addi r31, r5, cNullVec__6Z2Calc@l /* 0x80AC92F0@l */
/* 80AC80A4  3B 20 00 00 */	li r25, 0
/* 80AC80A8  3B 80 00 00 */	li r28, 0
/* 80AC80AC  54 9E 18 38 */	slwi r30, r4, 3
/* 80AC80B0  3B BF 00 D4 */	addi r29, r31, 0xd4
/* 80AC80B4  7C BD F0 2E */	lwzx r5, r29, r30
/* 80AC80B8  2C 05 FF FF */	cmpwi r5, -1
/* 80AC80BC  41 82 00 20 */	beq lbl_80AC80DC
/* 80AC80C0  7C 9D F2 14 */	add r4, r29, r30
/* 80AC80C4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC80C8  54 00 10 3A */	slwi r0, r0, 2
/* 80AC80CC  38 9F 00 40 */	addi r4, r31, 0x40
/* 80AC80D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC80D4  4B 68 00 39 */	bl getTexSRTKeyAnmP__8daNpcT_cFPCci
/* 80AC80D8  7C 79 1B 78 */	mr r25, r3
lbl_80AC80DC:
/* 80AC80DC  28 19 00 00 */	cmplwi r25, 0
/* 80AC80E0  41 82 00 58 */	beq lbl_80AC8138
/* 80AC80E4  80 1A 06 58 */	lwz r0, 0x658(r26)
/* 80AC80E8  7C 00 C8 40 */	cmplw r0, r25
/* 80AC80EC  40 82 00 14 */	bne lbl_80AC8100
/* 80AC80F0  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AC80F4  60 00 00 80 */	ori r0, r0, 0x80
/* 80AC80F8  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80AC80FC  48 00 00 3C */	b lbl_80AC8138
lbl_80AC8100:
/* 80AC8100  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80AC8104  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC8108  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AC810C  7F 43 D3 78 */	mr r3, r26
/* 80AC8110  7F 24 CB 78 */	mr r4, r25
/* 80AC8114  3C C0 80 AD */	lis r6, lit_4215@ha /* 0x80AC92BC@ha */
/* 80AC8118  C0 26 92 BC */	lfs f1, lit_4215@l(r6)  /* 0x80AC92BC@l */
/* 80AC811C  7F 66 DB 78 */	mr r6, r27
/* 80AC8120  4B 68 02 19 */	bl setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80AC8124  2C 03 00 00 */	cmpwi r3, 0
/* 80AC8128  41 82 00 10 */	beq lbl_80AC8138
/* 80AC812C  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AC8130  60 00 00 82 */	ori r0, r0, 0x82
/* 80AC8134  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80AC8138:
/* 80AC8138  28 19 00 00 */	cmplwi r25, 0
/* 80AC813C  40 82 00 18 */	bne lbl_80AC8154
/* 80AC8140  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80AC8144  2C 00 FF FF */	cmpwi r0, -1
/* 80AC8148  41 82 00 0C */	beq lbl_80AC8154
/* 80AC814C  38 60 00 00 */	li r3, 0
/* 80AC8150  48 00 00 B0 */	b lbl_80AC8200
lbl_80AC8154:
/* 80AC8154  3B BF 00 DC */	addi r29, r31, 0xdc
/* 80AC8158  7C BD F0 2E */	lwzx r5, r29, r30
/* 80AC815C  2C 05 FF FF */	cmpwi r5, -1
/* 80AC8160  41 82 00 24 */	beq lbl_80AC8184
/* 80AC8164  7F 43 D3 78 */	mr r3, r26
/* 80AC8168  7C 9D F2 14 */	add r4, r29, r30
/* 80AC816C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC8170  54 00 10 3A */	slwi r0, r0, 2
/* 80AC8174  38 9F 00 40 */	addi r4, r31, 0x40
/* 80AC8178  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC817C  4B 67 FF CD */	bl getTevRegKeyAnmP__8daNpcT_cFPCci
/* 80AC8180  7C 7C 1B 78 */	mr r28, r3
lbl_80AC8184:
/* 80AC8184  28 1C 00 00 */	cmplwi r28, 0
/* 80AC8188  41 82 00 58 */	beq lbl_80AC81E0
/* 80AC818C  80 1A 06 70 */	lwz r0, 0x670(r26)
/* 80AC8190  7C 00 E0 40 */	cmplw r0, r28
/* 80AC8194  40 82 00 14 */	bne lbl_80AC81A8
/* 80AC8198  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AC819C  60 00 01 00 */	ori r0, r0, 0x100
/* 80AC81A0  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80AC81A4  48 00 00 3C */	b lbl_80AC81E0
lbl_80AC81A8:
/* 80AC81A8  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80AC81AC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC81B0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AC81B4  7F 43 D3 78 */	mr r3, r26
/* 80AC81B8  7F 84 E3 78 */	mr r4, r28
/* 80AC81BC  3C C0 80 AD */	lis r6, lit_4215@ha /* 0x80AC92BC@ha */
/* 80AC81C0  C0 26 92 BC */	lfs f1, lit_4215@l(r6)  /* 0x80AC92BC@l */
/* 80AC81C4  7F 66 DB 78 */	mr r6, r27
/* 80AC81C8  4B 68 01 B1 */	bl setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 80AC81CC  2C 03 00 00 */	cmpwi r3, 0
/* 80AC81D0  41 82 00 10 */	beq lbl_80AC81E0
/* 80AC81D4  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AC81D8  60 00 01 04 */	ori r0, r0, 0x104
/* 80AC81DC  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80AC81E0:
/* 80AC81E0  28 1C 00 00 */	cmplwi r28, 0
/* 80AC81E4  40 82 00 18 */	bne lbl_80AC81FC
/* 80AC81E8  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80AC81EC  2C 00 FF FF */	cmpwi r0, -1
/* 80AC81F0  41 82 00 0C */	beq lbl_80AC81FC
/* 80AC81F4  38 60 00 00 */	li r3, 0
/* 80AC81F8  48 00 00 08 */	b lbl_80AC8200
lbl_80AC81FC:
/* 80AC81FC  38 60 00 01 */	li r3, 1
lbl_80AC8200:
/* 80AC8200  39 61 00 30 */	addi r11, r1, 0x30
/* 80AC8204  4B 89 A0 15 */	bl _restgpr_25
/* 80AC8208  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC820C  7C 08 03 A6 */	mtlr r0
/* 80AC8210  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC8214  4E 80 00 20 */	blr 
