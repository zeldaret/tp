lbl_80078A14:
/* 80078A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078A18  7C 08 02 A6 */	mflr r0
/* 80078A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078A20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078A24  7C 7F 1B 78 */	mr r31, r3
/* 80078A28  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 80078A2C  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 80078A30  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80078A34  38 7F 00 14 */	addi r3, r31, 0x14
/* 80078A38  48 1E F6 3D */	bl __ct__13cBgS_PolyInfoFv
/* 80078A3C  38 7F 00 24 */	addi r3, r31, 0x24
/* 80078A40  48 1E F1 0D */	bl __ct__8cBgS_ChkFv
/* 80078A44  38 7F 00 38 */	addi r3, r31, 0x38
/* 80078A48  4B FF EA 55 */	bl __ct__8dBgS_ChkFv
/* 80078A4C  3C 60 80 3B */	lis r3, __vt__11dBgS_SphChk@ha /* 0x803AB9C8@ha */
/* 80078A50  38 63 B9 C8 */	addi r3, r3, __vt__11dBgS_SphChk@l /* 0x803AB9C8@l */
/* 80078A54  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80078A58  38 03 00 0C */	addi r0, r3, 0xc
/* 80078A5C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80078A60  38 03 00 18 */	addi r0, r3, 0x18
/* 80078A64  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80078A68  38 03 00 24 */	addi r0, r3, 0x24
/* 80078A6C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80078A70  38 03 00 30 */	addi r0, r3, 0x30
/* 80078A74  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80078A78  38 7F 00 38 */	addi r3, r31, 0x38
/* 80078A7C  4B FF EA E5 */	bl GetPolyPassChkInfo__8dBgS_ChkFv
/* 80078A80  90 7F 00 24 */	stw r3, 0x24(r31)
/* 80078A84  38 7F 00 38 */	addi r3, r31, 0x38
/* 80078A88  4B FF EA DD */	bl GetGrpPassChkInfo__8dBgS_ChkFv
/* 80078A8C  90 7F 00 28 */	stw r3, 0x28(r31)
/* 80078A90  38 00 FF FF */	li r0, -1
/* 80078A94  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80078A98  38 7F 00 14 */	addi r3, r31, 0x14
/* 80078A9C  48 1E F6 85 */	bl ClearPi__13cBgS_PolyInfoFv
/* 80078AA0  38 00 00 00 */	li r0, 0
/* 80078AA4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80078AA8  7F E3 FB 78 */	mr r3, r31
/* 80078AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078AB4  7C 08 03 A6 */	mtlr r0
/* 80078AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80078ABC  4E 80 00 20 */	blr 
