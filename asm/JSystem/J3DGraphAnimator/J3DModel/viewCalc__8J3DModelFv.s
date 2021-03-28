lbl_80327F40:
/* 80327F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80327F44  7C 08 02 A6 */	mflr r0
/* 80327F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80327F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80327F50  7C 7F 1B 78 */	mr r31, r3
/* 80327F54  80 C3 00 84 */	lwz r6, 0x84(r3)
/* 80327F58  80 86 00 14 */	lwz r4, 0x14(r6)
/* 80327F5C  80 06 00 30 */	lwz r0, 0x30(r6)
/* 80327F60  54 07 10 3A */	slwi r7, r0, 2
/* 80327F64  7C A4 38 2E */	lwzx r5, r4, r7
/* 80327F68  80 66 00 18 */	lwz r3, 0x18(r6)
/* 80327F6C  7C 03 38 2E */	lwzx r0, r3, r7
/* 80327F70  7C 04 39 2E */	stwx r0, r4, r7
/* 80327F74  80 66 00 18 */	lwz r3, 0x18(r6)
/* 80327F78  80 06 00 30 */	lwz r0, 0x30(r6)
/* 80327F7C  54 00 10 3A */	slwi r0, r0, 2
/* 80327F80  7C A3 01 2E */	stwx r5, r3, r0
/* 80327F84  80 DF 00 84 */	lwz r6, 0x84(r31)
/* 80327F88  80 86 00 1C */	lwz r4, 0x1c(r6)
/* 80327F8C  80 06 00 30 */	lwz r0, 0x30(r6)
/* 80327F90  54 07 10 3A */	slwi r7, r0, 2
/* 80327F94  7C A4 38 2E */	lwzx r5, r4, r7
/* 80327F98  80 66 00 20 */	lwz r3, 0x20(r6)
/* 80327F9C  7C 03 38 2E */	lwzx r0, r3, r7
/* 80327FA0  7C 04 39 2E */	stwx r0, r4, r7
/* 80327FA4  80 66 00 20 */	lwz r3, 0x20(r6)
/* 80327FA8  80 06 00 30 */	lwz r0, 0x30(r6)
/* 80327FAC  54 00 10 3A */	slwi r0, r0, 2
/* 80327FB0  7C A3 01 2E */	stwx r5, r3, r0
/* 80327FB4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80327FB8  80 03 00 08 */	lwz r0, 8(r3)
/* 80327FBC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80327FC0  41 82 00 30 */	beq lbl_80327FF0
/* 80327FC4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327FC8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80327FCC  28 00 00 02 */	cmplwi r0, 2
/* 80327FD0  40 82 01 A4 */	bne lbl_80328174
/* 80327FD4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80327FD8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80327FDC  38 9F 00 18 */	addi r4, r31, 0x18
/* 80327FE0  38 BF 00 24 */	addi r5, r31, 0x24
/* 80327FE4  38 DF 00 54 */	addi r6, r31, 0x54
/* 80327FE8  4B FF F0 61 */	bl J3DCalcViewBaseMtx__FPA4_fRC3VecRA3_A4_CfPA4_f
/* 80327FEC  48 00 01 88 */	b lbl_80328174
lbl_80327FF0:
/* 80327FF0  38 60 00 00 */	li r3, 0
/* 80327FF4  80 9F 00 08 */	lwz r4, 8(r31)
/* 80327FF8  54 85 07 7B */	rlwinm. r5, r4, 0, 0x1d, 0x1d
/* 80327FFC  41 82 00 10 */	beq lbl_8032800C
/* 80328000  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80328004  41 82 00 08 */	beq lbl_8032800C
/* 80328008  38 60 00 01 */	li r3, 1
lbl_8032800C:
/* 8032800C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80328010  41 82 00 2C */	beq lbl_8032803C
/* 80328014  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 80328018  28 00 00 02 */	cmplwi r0, 2
/* 8032801C  40 82 01 58 */	bne lbl_80328174
/* 80328020  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80328024  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80328028  38 9F 00 18 */	addi r4, r31, 0x18
/* 8032802C  38 BF 00 24 */	addi r5, r31, 0x24
/* 80328030  38 DF 00 54 */	addi r6, r31, 0x54
/* 80328034  4B FF F0 15 */	bl J3DCalcViewBaseMtx__FPA4_fRC3VecRA3_A4_CfPA4_f
/* 80328038  48 00 01 3C */	b lbl_80328174
lbl_8032803C:
/* 8032803C  28 05 00 00 */	cmplwi r5, 0
/* 80328040  41 82 00 74 */	beq lbl_803280B4
/* 80328044  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80328048  54 84 07 BE */	clrlwi r4, r4, 0x1e
/* 8032804C  38 BF 00 18 */	addi r5, r31, 0x18
/* 80328050  38 DF 00 24 */	addi r6, r31, 0x24
/* 80328054  4B FF EA 79 */	bl calcDrawMtx__12J3DMtxBufferFUlRC3VecRA3_A4_Cf
/* 80328058  7F E3 FB 78 */	mr r3, r31
/* 8032805C  48 00 01 35 */	bl calcNrmMtx__8J3DModelFv
/* 80328060  7F E3 FB 78 */	mr r3, r31
/* 80328064  48 00 01 51 */	bl calcBumpMtx__8J3DModelFv
/* 80328068  80 7F 00 04 */	lwz r3, 4(r31)
/* 8032806C  A0 83 00 44 */	lhz r4, 0x44(r3)
/* 80328070  80 BF 00 84 */	lwz r5, 0x84(r31)
/* 80328074  80 65 00 18 */	lwz r3, 0x18(r5)
/* 80328078  80 05 00 30 */	lwz r0, 0x30(r5)
/* 8032807C  54 00 10 3A */	slwi r0, r0, 2
/* 80328080  7C 63 00 2E */	lwzx r3, r3, r0
/* 80328084  1C 84 00 30 */	mulli r4, r4, 0x30
/* 80328088  48 01 35 B1 */	bl DCStoreRangeNoSync
/* 8032808C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80328090  A0 83 00 44 */	lhz r4, 0x44(r3)
/* 80328094  80 BF 00 84 */	lwz r5, 0x84(r31)
/* 80328098  80 65 00 20 */	lwz r3, 0x20(r5)
/* 8032809C  80 05 00 30 */	lwz r0, 0x30(r5)
/* 803280A0  54 00 10 3A */	slwi r0, r0, 2
/* 803280A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 803280A8  1C 84 00 24 */	mulli r4, r4, 0x24
/* 803280AC  48 01 35 31 */	bl DCStoreRange
/* 803280B0  48 00 00 C4 */	b lbl_80328174
lbl_803280B4:
/* 803280B4  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803280B8  41 82 00 48 */	beq lbl_80328100
/* 803280BC  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 803280C0  54 84 07 BE */	clrlwi r4, r4, 0x1e
/* 803280C4  38 BF 00 18 */	addi r5, r31, 0x18
/* 803280C8  38 DF 00 24 */	addi r6, r31, 0x24
/* 803280CC  4B FF EA 01 */	bl calcDrawMtx__12J3DMtxBufferFUlRC3VecRA3_A4_Cf
/* 803280D0  7F E3 FB 78 */	mr r3, r31
/* 803280D4  48 00 01 E5 */	bl calcBBoardMtx__8J3DModelFv
/* 803280D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 803280DC  A0 83 00 44 */	lhz r4, 0x44(r3)
/* 803280E0  80 BF 00 84 */	lwz r5, 0x84(r31)
/* 803280E4  80 65 00 18 */	lwz r3, 0x18(r5)
/* 803280E8  80 05 00 30 */	lwz r0, 0x30(r5)
/* 803280EC  54 00 10 3A */	slwi r0, r0, 2
/* 803280F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 803280F4  1C 84 00 30 */	mulli r4, r4, 0x30
/* 803280F8  48 01 34 E5 */	bl DCStoreRange
/* 803280FC  48 00 00 78 */	b lbl_80328174
lbl_80328100:
/* 80328100  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80328104  54 84 07 BE */	clrlwi r4, r4, 0x1e
/* 80328108  38 BF 00 18 */	addi r5, r31, 0x18
/* 8032810C  38 DF 00 24 */	addi r6, r31, 0x24
/* 80328110  4B FF E9 BD */	bl calcDrawMtx__12J3DMtxBufferFUlRC3VecRA3_A4_Cf
/* 80328114  7F E3 FB 78 */	mr r3, r31
/* 80328118  48 00 00 79 */	bl calcNrmMtx__8J3DModelFv
/* 8032811C  7F E3 FB 78 */	mr r3, r31
/* 80328120  48 00 01 99 */	bl calcBBoardMtx__8J3DModelFv
/* 80328124  7F E3 FB 78 */	mr r3, r31
/* 80328128  48 00 00 8D */	bl calcBumpMtx__8J3DModelFv
/* 8032812C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80328130  A0 83 00 44 */	lhz r4, 0x44(r3)
/* 80328134  80 BF 00 84 */	lwz r5, 0x84(r31)
/* 80328138  80 65 00 18 */	lwz r3, 0x18(r5)
/* 8032813C  80 05 00 30 */	lwz r0, 0x30(r5)
/* 80328140  54 00 10 3A */	slwi r0, r0, 2
/* 80328144  7C 63 00 2E */	lwzx r3, r3, r0
/* 80328148  1C 84 00 30 */	mulli r4, r4, 0x30
/* 8032814C  48 01 34 ED */	bl DCStoreRangeNoSync
/* 80328150  80 7F 00 04 */	lwz r3, 4(r31)
/* 80328154  A0 83 00 44 */	lhz r4, 0x44(r3)
/* 80328158  80 BF 00 84 */	lwz r5, 0x84(r31)
/* 8032815C  80 65 00 20 */	lwz r3, 0x20(r5)
/* 80328160  80 05 00 30 */	lwz r0, 0x30(r5)
/* 80328164  54 00 10 3A */	slwi r0, r0, 2
/* 80328168  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032816C  1C 84 00 24 */	mulli r4, r4, 0x24
/* 80328170  48 01 34 6D */	bl DCStoreRange
lbl_80328174:
/* 80328174  7F E3 FB 78 */	mr r3, r31
/* 80328178  48 00 01 75 */	bl prepareShapePackets__8J3DModelFv
/* 8032817C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80328180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80328184  7C 08 03 A6 */	mtlr r0
/* 80328188  38 21 00 10 */	addi r1, r1, 0x10
/* 8032818C  4E 80 00 20 */	blr 
