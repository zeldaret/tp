lbl_80CF7BF0:
/* 80CF7BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF7BF4  7C 08 02 A6 */	mflr r0
/* 80CF7BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF7BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF7C00  4B 66 A5 DC */	b _savegpr_29
/* 80CF7C04  7C 7F 1B 78 */	mr r31, r3
/* 80CF7C08  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CF7C0C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CF7C10  40 82 01 5C */	bne lbl_80CF7D6C
/* 80CF7C14  7F E0 FB 79 */	or. r0, r31, r31
/* 80CF7C18  41 82 01 48 */	beq lbl_80CF7D60
/* 80CF7C1C  7C 1E 03 78 */	mr r30, r0
/* 80CF7C20  4B 38 0A 04 */	b __ct__16dBgS_MoveBgActorFv
/* 80CF7C24  3C 60 80 D0 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80CF7C28  38 03 85 D4 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80CF7C2C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80CF7C30  93 DE 05 A4 */	stw r30, 0x5a4(r30)
/* 80CF7C34  38 00 00 00 */	li r0, 0
/* 80CF7C38  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80CF7C3C  3C 60 80 D0 */	lis r3, __vt__14daObjSwLight_c@ha
/* 80CF7C40  38 63 85 EC */	addi r3, r3, __vt__14daObjSwLight_c@l
/* 80CF7C44  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80CF7C48  38 03 00 28 */	addi r0, r3, 0x28
/* 80CF7C4C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80CF7C50  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CF7C54  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CF7C58  90 1E 05 D4 */	stw r0, 0x5d4(r30)
/* 80CF7C5C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80CF7C60  4B 38 BB 00 */	b __ct__10dCcD_GSttsFv
/* 80CF7C64  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CF7C68  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CF7C6C  90 7E 05 D4 */	stw r3, 0x5d4(r30)
/* 80CF7C70  38 03 00 20 */	addi r0, r3, 0x20
/* 80CF7C74  90 1E 05 D8 */	stw r0, 0x5d8(r30)
/* 80CF7C78  3B BE 05 F8 */	addi r29, r30, 0x5f8
/* 80CF7C7C  7F A3 EB 78 */	mr r3, r29
/* 80CF7C80  4B 38 BD A8 */	b __ct__12dCcD_GObjInfFv
/* 80CF7C84  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CF7C88  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CF7C8C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CF7C90  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha
/* 80CF7C94  38 03 85 C8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CF7C98  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80CF7C9C  3C 60 80 D0 */	lis r3, __vt__8cM3dGSph@ha
/* 80CF7CA0  38 03 85 BC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CF7CA4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80CF7CA8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CF7CAC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CF7CB0  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80CF7CB4  38 03 00 58 */	addi r0, r3, 0x58
/* 80CF7CB8  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80CF7CBC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CF7CC0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CF7CC4  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80CF7CC8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CF7CCC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CF7CD0  38 03 00 84 */	addi r0, r3, 0x84
/* 80CF7CD4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80CF7CD8  38 7E 07 30 */	addi r3, r30, 0x730
/* 80CF7CDC  3C 80 80 CF */	lis r4, __ct__8dCcD_SphFv@ha
/* 80CF7CE0  38 84 7D D4 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80CF7CE4  3C A0 80 CF */	lis r5, __dt__8dCcD_SphFv@ha
/* 80CF7CE8  38 A5 7E 58 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80CF7CEC  38 C0 01 38 */	li r6, 0x138
/* 80CF7CF0  38 E0 00 02 */	li r7, 2
/* 80CF7CF4  4B 66 A0 6C */	b __construct_array
/* 80CF7CF8  3B BE 09 A0 */	addi r29, r30, 0x9a0
/* 80CF7CFC  7F A3 EB 78 */	mr r3, r29
/* 80CF7D00  4B 38 BD 28 */	b __ct__12dCcD_GObjInfFv
/* 80CF7D04  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CF7D08  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CF7D0C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CF7D10  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha
/* 80CF7D14  38 03 85 C8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CF7D18  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80CF7D1C  3C 60 80 D0 */	lis r3, __vt__8cM3dGCyl@ha
/* 80CF7D20  38 03 85 B0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CF7D24  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CF7D28  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CF7D2C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CF7D30  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80CF7D34  38 03 00 58 */	addi r0, r3, 0x58
/* 80CF7D38  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CF7D3C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CF7D40  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CF7D44  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80CF7D48  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CF7D4C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CF7D50  38 03 00 84 */	addi r0, r3, 0x84
/* 80CF7D54  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CF7D58  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 80CF7D5C  4B 5C 6A E8 */	b __ct__16Z2SoundObjSimpleFv
lbl_80CF7D60:
/* 80CF7D60  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CF7D64  60 00 00 08 */	ori r0, r0, 8
/* 80CF7D68  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CF7D6C:
/* 80CF7D6C  7F E3 FB 78 */	mr r3, r31
/* 80CF7D70  4B FF F4 F1 */	bl create1st__14daObjSwLight_cFv
/* 80CF7D74  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF7D78  4B 66 A4 B0 */	b _restgpr_29
/* 80CF7D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF7D80  7C 08 03 A6 */	mtlr r0
/* 80CF7D84  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF7D88  4E 80 00 20 */	blr 
