lbl_80CA8F38:
/* 80CA8F38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA8F3C  7C 08 02 A6 */	mflr r0
/* 80CA8F40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA8F44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CA8F48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CA8F4C  7C 7E 1B 78 */	mr r30, r3
/* 80CA8F50  3C 80 80 CB */	lis r4, lit_3655@ha
/* 80CA8F54  3B E4 9B 78 */	addi r31, r4, lit_3655@l
/* 80CA8F58  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 80CA8F5C  D0 03 05 94 */	stfs f0, 0x594(r3)
/* 80CA8F60  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80CA8F64  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 80CA8F68  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 80CA8F6C  D0 03 05 9C */	stfs f0, 0x59c(r3)
/* 80CA8F70  48 00 02 15 */	bl mode_proc_call__11daOnsTaru_cFv
/* 80CA8F74  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CA8F78  D0 1E 05 88 */	stfs f0, 0x588(r30)
/* 80CA8F7C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CA8F80  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 80CA8F84  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CA8F88  D0 1E 05 90 */	stfs f0, 0x590(r30)
/* 80CA8F8C  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80CA8F90  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CA8F94  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CA8F98  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CA8F9C  4B 3C DB 10 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CA8FA0  38 61 00 08 */	addi r3, r1, 8
/* 80CA8FA4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CA8FA8  38 BE 05 88 */	addi r5, r30, 0x588
/* 80CA8FAC  4B 5B DB 88 */	b __mi__4cXyzCFRC3Vec
/* 80CA8FB0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CA8FB4  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 80CA8FB8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CA8FBC  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 80CA8FC0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CA8FC4  D0 1E 05 84 */	stfs f0, 0x584(r30)
/* 80CA8FC8  88 1E 05 78 */	lbz r0, 0x578(r30)
/* 80CA8FCC  28 00 00 01 */	cmplwi r0, 1
/* 80CA8FD0  40 82 00 1C */	bne lbl_80CA8FEC
/* 80CA8FD4  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 80CA8FD8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80CA8FDC  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 80CA8FE0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CA8FE4  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 80CA8FE8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80CA8FEC:
/* 80CA8FEC  7F C3 F3 78 */	mr r3, r30
/* 80CA8FF0  4B FF FC A5 */	bl bgCheck__11daOnsTaru_cFv
/* 80CA8FF4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CA8FF8  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80CA8FFC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CA9000  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CA9004  EC 01 00 2A */	fadds f0, f1, f0
/* 80CA9008  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CA900C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CA9010  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80CA9014  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80CA9018  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80CA901C  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80CA9020  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80CA9024  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80CA9028  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80CA902C  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80CA9030  54 00 A7 FE */	rlwinm r0, r0, 0x14, 0x1f, 0x1f
/* 80CA9034  98 1E 05 A0 */	stb r0, 0x5a0(r30)
/* 80CA9038  7F C3 F3 78 */	mr r3, r30
/* 80CA903C  4B FF F6 85 */	bl setBaseMtx__11daOnsTaru_cFv
/* 80CA9040  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80CA9044  4B 3D B2 7C */	b ChkAtHit__12dCcD_GObjInfFv
/* 80CA9048  28 03 00 00 */	cmplwi r3, 0
/* 80CA904C  41 82 00 2C */	beq lbl_80CA9078
/* 80CA9050  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80CA9054  4B 3D B3 54 */	b GetAtHitGObj__12dCcD_GObjInfFv
/* 80CA9058  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80CA905C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80CA9060  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80CA9064  7C 80 00 39 */	and. r0, r4, r0
/* 80CA9068  41 82 00 44 */	beq lbl_80CA90AC
/* 80CA906C  7F C3 F3 78 */	mr r3, r30
/* 80CA9070  48 00 03 B5 */	bl mode_init_break__11daOnsTaru_cFv
/* 80CA9074  48 00 00 38 */	b lbl_80CA90AC
lbl_80CA9078:
/* 80CA9078  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80CA907C  4B 3D B3 E4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CA9080  28 03 00 00 */	cmplwi r3, 0
/* 80CA9084  41 82 00 28 */	beq lbl_80CA90AC
/* 80CA9088  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80CA908C  4B 3D B4 BC */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80CA9090  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80CA9094  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80CA9098  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80CA909C  7C 80 00 39 */	and. r0, r4, r0
/* 80CA90A0  41 82 00 0C */	beq lbl_80CA90AC
/* 80CA90A4  7F C3 F3 78 */	mr r3, r30
/* 80CA90A8  48 00 03 7D */	bl mode_init_break__11daOnsTaru_cFv
lbl_80CA90AC:
/* 80CA90AC  38 7E 09 1C */	addi r3, r30, 0x91c
/* 80CA90B0  C0 3E 09 44 */	lfs f1, 0x944(r30)
/* 80CA90B4  4B 5C 61 4C */	b SetR__8cM3dGCylFf
/* 80CA90B8  38 7E 09 1C */	addi r3, r30, 0x91c
/* 80CA90BC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CA90C0  4B 5C 61 38 */	b SetH__8cM3dGCylFf
/* 80CA90C4  38 7E 09 1C */	addi r3, r30, 0x91c
/* 80CA90C8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CA90CC  4B 5C 61 10 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CA90D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA90D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA90D8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CA90DC  38 9E 07 F8 */	addi r4, r30, 0x7f8
/* 80CA90E0  4B 5B BA C8 */	b Set__4cCcSFP8cCcD_Obj
/* 80CA90E4  38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 80CA90E8  4B 3D A7 48 */	b Move__10dCcD_GSttsFv
/* 80CA90EC  88 1E 09 36 */	lbz r0, 0x936(r30)
/* 80CA90F0  28 00 00 00 */	cmplwi r0, 0
/* 80CA90F4  41 82 00 74 */	beq lbl_80CA9168
/* 80CA90F8  A8 9E 09 34 */	lha r4, 0x934(r30)
/* 80CA90FC  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CA9100  38 63 9D F4 */	addi r3, r3, l_HIO@l
/* 80CA9104  A8 03 00 04 */	lha r0, 4(r3)
/* 80CA9108  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 80CA910C  7C 00 07 34 */	extsh r0, r0
/* 80CA9110  7C 04 00 00 */	cmpw r4, r0
/* 80CA9114  40 80 00 48 */	bge lbl_80CA915C
/* 80CA9118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA911C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA9120  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80CA9124  28 00 00 00 */	cmplwi r0, 0
/* 80CA9128  40 82 00 0C */	bne lbl_80CA9134
/* 80CA912C  38 04 00 01 */	addi r0, r4, 1
/* 80CA9130  B0 1E 09 34 */	sth r0, 0x934(r30)
lbl_80CA9134:
/* 80CA9134  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CA9138  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CA913C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CA9140  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CA9144  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CA9148  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CA914C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CA9150  EC 01 00 2A */	fadds f0, f1, f0
/* 80CA9154  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CA9158  48 00 00 10 */	b lbl_80CA9168
lbl_80CA915C:
/* 80CA915C  38 00 00 00 */	li r0, 0
/* 80CA9160  98 1E 09 3D */	stb r0, 0x93d(r30)
/* 80CA9164  98 1E 09 36 */	stb r0, 0x936(r30)
lbl_80CA9168:
/* 80CA9168  38 60 00 01 */	li r3, 1
/* 80CA916C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CA9170  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CA9174  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA9178  7C 08 03 A6 */	mtlr r0
/* 80CA917C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA9180  4E 80 00 20 */	blr 
