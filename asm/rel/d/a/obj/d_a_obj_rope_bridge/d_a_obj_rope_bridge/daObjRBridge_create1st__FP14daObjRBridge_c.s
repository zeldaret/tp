lbl_80597920:
/* 80597920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80597924  7C 08 02 A6 */	mflr r0
/* 80597928  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059792C  39 61 00 20 */	addi r11, r1, 0x20
/* 80597930  4B DC A8 A0 */	b _savegpr_26
/* 80597934  7C 7F 1B 78 */	mr r31, r3
/* 80597938  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8059793C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80597940  40 82 01 30 */	bne lbl_80597A70
/* 80597944  7F E0 FB 79 */	or. r0, r31, r31
/* 80597948  41 82 01 1C */	beq lbl_80597A64
/* 8059794C  7C 1E 03 78 */	mr r30, r0
/* 80597950  4B AE 0C D4 */	b __ct__16dBgS_MoveBgActorFv
/* 80597954  3C 60 80 5A */	lis r3, __vt__14daObjRBridge_c@ha
/* 80597958  38 03 80 D0 */	addi r0, r3, __vt__14daObjRBridge_c@l
/* 8059795C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80597960  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80597964  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80597968  90 1E 05 D0 */	stw r0, 0x5d0(r30)
/* 8059796C  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 80597970  4B AE BD F0 */	b __ct__10dCcD_GSttsFv
/* 80597974  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80597978  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8059797C  90 7E 05 D0 */	stw r3, 0x5d0(r30)
/* 80597980  38 03 00 20 */	addi r0, r3, 0x20
/* 80597984  90 1E 05 D4 */	stw r0, 0x5d4(r30)
/* 80597988  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 8059798C  3C 80 80 59 */	lis r4, __ct__8dCcD_CpsFv@ha
/* 80597990  38 84 7B E4 */	addi r4, r4, __ct__8dCcD_CpsFv@l
/* 80597994  3C A0 80 59 */	lis r5, __dt__8dCcD_CpsFv@ha
/* 80597998  38 A5 7B 20 */	addi r5, r5, __dt__8dCcD_CpsFv@l
/* 8059799C  38 C0 01 44 */	li r6, 0x144
/* 805979A0  38 E0 00 02 */	li r7, 2
/* 805979A4  4B DC A3 BC */	b __construct_array
/* 805979A8  3B 5E 08 7C */	addi r26, r30, 0x87c
/* 805979AC  7F 43 D3 78 */	mr r3, r26
/* 805979B0  4B AE C0 78 */	b __ct__12dCcD_GObjInfFv
/* 805979B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805979B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805979BC  90 1A 01 20 */	stw r0, 0x120(r26)
/* 805979C0  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 805979C4  38 03 80 B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805979C8  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 805979CC  3C 60 80 5A */	lis r3, __vt__8cM3dGSph@ha
/* 805979D0  38 03 80 A4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805979D4  90 1A 01 34 */	stw r0, 0x134(r26)
/* 805979D8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805979DC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805979E0  90 7A 01 20 */	stw r3, 0x120(r26)
/* 805979E4  3B A3 00 58 */	addi r29, r3, 0x58
/* 805979E8  93 BA 01 34 */	stw r29, 0x134(r26)
/* 805979EC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805979F0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805979F4  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 805979F8  3B 83 00 2C */	addi r28, r3, 0x2c
/* 805979FC  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80597A00  3B 63 00 84 */	addi r27, r3, 0x84
/* 80597A04  93 7A 01 34 */	stw r27, 0x134(r26)
/* 80597A08  3B 5E 09 B4 */	addi r26, r30, 0x9b4
/* 80597A0C  7F 43 D3 78 */	mr r3, r26
/* 80597A10  4B AE C0 18 */	b __ct__12dCcD_GObjInfFv
/* 80597A14  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80597A18  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80597A1C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80597A20  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 80597A24  38 03 80 B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80597A28  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80597A2C  3C 60 80 5A */	lis r3, __vt__8cM3dGSph@ha
/* 80597A30  38 03 80 A4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80597A34  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80597A38  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80597A3C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80597A40  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80597A44  93 BA 01 34 */	stw r29, 0x134(r26)
/* 80597A48  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80597A4C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80597A50  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 80597A54  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80597A58  93 7A 01 34 */	stw r27, 0x134(r26)
/* 80597A5C  38 7E 0B 4C */	addi r3, r30, 0xb4c
/* 80597A60  4B D2 6D E4 */	b __ct__16Z2SoundObjSimpleFv
lbl_80597A64:
/* 80597A64  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80597A68  60 00 00 08 */	ori r0, r0, 8
/* 80597A6C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80597A70:
/* 80597A70  7F E3 FB 78 */	mr r3, r31
/* 80597A74  4B FF F3 79 */	bl create1st__14daObjRBridge_cFv
/* 80597A78  39 61 00 20 */	addi r11, r1, 0x20
/* 80597A7C  4B DC A7 A0 */	b _restgpr_26
/* 80597A80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80597A84  7C 08 03 A6 */	mtlr r0
/* 80597A88  38 21 00 20 */	addi r1, r1, 0x20
/* 80597A8C  4E 80 00 20 */	blr 
