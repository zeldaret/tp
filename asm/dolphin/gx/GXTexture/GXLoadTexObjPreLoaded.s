lbl_8035E298:
/* 8035E298  7C 08 02 A6 */	mflr r0
/* 8035E29C  38 ED 85 20 */	la r7, GXTexImage0Ids(r13) /* 80450AA0-_SDA_BASE_ */
/* 8035E2A0  90 01 00 04 */	stw r0, 4(r1)
/* 8035E2A4  38 CD 85 28 */	la r6, GXTexImage1Ids(r13) /* 80450AA8-_SDA_BASE_ */
/* 8035E2A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8035E2AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8035E2B0  3B E5 00 00 */	addi r31, r5, 0
/* 8035E2B4  38 AD 85 10 */	la r5, GXTexMode0Ids(r13) /* 80450A90-_SDA_BASE_ */
/* 8035E2B8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8035E2BC  3B C3 00 00 */	addi r30, r3, 0
/* 8035E2C0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8035E2C4  3F A0 CC 01 */	lis r29, 0xCC01 /* 0xCC008000@ha */
/* 8035E2C8  93 81 00 30 */	stw r28, 0x30(r1)
/* 8035E2CC  3B 80 00 61 */	li r28, 0x61
/* 8035E2D0  7C 05 F8 AE */	lbzx r0, r5, r31
/* 8035E2D4  80 A3 00 00 */	lwz r5, 0(r3)
/* 8035E2D8  38 6D 85 18 */	la r3, GXTexMode1Ids(r13) /* 80450A98-_SDA_BASE_ */
/* 8035E2DC  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 8035E2E0  90 BE 00 00 */	stw r5, 0(r30)
/* 8035E2E4  38 AD 85 30 */	la r5, GXTexImage2Ids(r13) /* 80450AB0-_SDA_BASE_ */
/* 8035E2E8  7C 03 F8 AE */	lbzx r0, r3, r31
/* 8035E2EC  38 6D 85 38 */	la r3, GXTexImage3Ids(r13) /* 80450AB8-_SDA_BASE_ */
/* 8035E2F0  81 1E 00 04 */	lwz r8, 4(r30)
/* 8035E2F4  50 08 C0 0E */	rlwimi r8, r0, 0x18, 0, 7
/* 8035E2F8  91 1E 00 04 */	stw r8, 4(r30)
/* 8035E2FC  7C 07 F8 AE */	lbzx r0, r7, r31
/* 8035E300  80 FE 00 08 */	lwz r7, 8(r30)
/* 8035E304  50 07 C0 0E */	rlwimi r7, r0, 0x18, 0, 7
/* 8035E308  90 FE 00 08 */	stw r7, 8(r30)
/* 8035E30C  7C 06 F8 AE */	lbzx r0, r6, r31
/* 8035E310  80 C4 00 00 */	lwz r6, 0(r4)
/* 8035E314  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 8035E318  90 C4 00 00 */	stw r6, 0(r4)
/* 8035E31C  7C 05 F8 AE */	lbzx r0, r5, r31
/* 8035E320  80 A4 00 04 */	lwz r5, 4(r4)
/* 8035E324  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 8035E328  90 A4 00 04 */	stw r5, 4(r4)
/* 8035E32C  7C 03 F8 AE */	lbzx r0, r3, r31
/* 8035E330  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8035E334  50 03 C0 0E */	rlwimi r3, r0, 0x18, 0, 7
/* 8035E338  90 7E 00 0C */	stw r3, 0xc(r30)
/* 8035E33C  9B 9D 80 00 */	stb r28, 0x8000(r29)
/* 8035E340  80 1E 00 00 */	lwz r0, 0(r30)
/* 8035E344  90 1D 80 00 */	stw r0, -0x8000(r29)
/* 8035E348  9B 9D 80 00 */	stb r28, -0x8000(r29)
/* 8035E34C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8035E350  90 1D 80 00 */	stw r0, -0x8000(r29)
/* 8035E354  9B 9D 80 00 */	stb r28, -0x8000(r29)
/* 8035E358  80 1E 00 08 */	lwz r0, 8(r30)
/* 8035E35C  90 1D 80 00 */	stw r0, -0x8000(r29)
/* 8035E360  9B 9D 80 00 */	stb r28, -0x8000(r29)
/* 8035E364  80 04 00 00 */	lwz r0, 0(r4)
/* 8035E368  90 1D 80 00 */	stw r0, -0x8000(r29)
/* 8035E36C  9B 9D 80 00 */	stb r28, -0x8000(r29)
/* 8035E370  80 04 00 04 */	lwz r0, 4(r4)
/* 8035E374  90 1D 80 00 */	stw r0, -0x8000(r29)
/* 8035E378  9B 9D 80 00 */	stb r28, -0x8000(r29)
/* 8035E37C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8035E380  90 1D 80 00 */	stw r0, -0x8000(r29)
/* 8035E384  88 1E 00 1F */	lbz r0, 0x1f(r30)
/* 8035E388  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8035E38C  40 82 00 38 */	bne lbl_8035E3C4
/* 8035E390  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035E394  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8035E398  81 84 04 CC */	lwz r12, 0x4cc(r4)
/* 8035E39C  7D 88 03 A6 */	mtlr r12
/* 8035E3A0  4E 80 00 21 */	blrl 
/* 8035E3A4  38 8D 85 40 */	la r4, GXTexTlutIds(r13) /* 80450AC0-_SDA_BASE_ */
/* 8035E3A8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8035E3AC  7C 04 F8 AE */	lbzx r0, r4, r31
/* 8035E3B0  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 8035E3B4  90 A3 00 04 */	stw r5, 4(r3)
/* 8035E3B8  9B 9D 80 00 */	stb r28, -0x8000(r29)
/* 8035E3BC  80 03 00 04 */	lwz r0, 4(r3)
/* 8035E3C0  90 1D 80 00 */	stw r0, -0x8000(r29)
lbl_8035E3C4:
/* 8035E3C4  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035E3C8  57 E4 10 3A */	slwi r4, r31, 2
/* 8035E3CC  80 7E 00 08 */	lwz r3, 8(r30)
/* 8035E3D0  38 00 00 00 */	li r0, 0
/* 8035E3D4  7C 85 22 14 */	add r4, r5, r4
/* 8035E3D8  90 64 05 14 */	stw r3, 0x514(r4)
/* 8035E3DC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8035E3E0  90 64 05 34 */	stw r3, 0x534(r4)
/* 8035E3E4  80 65 05 AC */	lwz r3, 0x5ac(r5)
/* 8035E3E8  60 63 00 01 */	ori r3, r3, 1
/* 8035E3EC  90 65 05 AC */	stw r3, 0x5ac(r5)
/* 8035E3F0  B0 05 00 02 */	sth r0, 2(r5)
/* 8035E3F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8035E3F8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8035E3FC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8035E400  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8035E404  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8035E408  38 21 00 40 */	addi r1, r1, 0x40
/* 8035E40C  7C 08 03 A6 */	mtlr r0
/* 8035E410  4E 80 00 20 */	blr 
