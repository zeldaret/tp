lbl_80497ED8:
/* 80497ED8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80497EDC  7C 08 02 A6 */	mflr r0
/* 80497EE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80497EE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80497EE8  4B EC A2 E4 */	b _savegpr_25
/* 80497EEC  7C 7B 1B 78 */	mr r27, r3
/* 80497EF0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80497EF4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80497EF8  40 82 01 74 */	bne lbl_8049806C
/* 80497EFC  7F 60 DB 79 */	or. r0, r27, r27
/* 80497F00  41 82 01 60 */	beq lbl_80498060
/* 80497F04  7C 1A 03 78 */	mr r26, r0
/* 80497F08  7C 1C 03 78 */	mr r28, r0
/* 80497F0C  4B BE 07 18 */	b __ct__16dBgS_MoveBgActorFv
/* 80497F10  3C 60 80 4A */	lis r3, __vt__12daTboxBase_c@ha
/* 80497F14  38 03 84 18 */	addi r0, r3, __vt__12daTboxBase_c@l
/* 80497F18  90 1C 05 9C */	stw r0, 0x59c(r28)
/* 80497F1C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80497F20  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80497F24  90 1C 05 B8 */	stw r0, 0x5b8(r28)
/* 80497F28  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80497F2C  4B BE B8 34 */	b __ct__10dCcD_GSttsFv
/* 80497F30  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80497F34  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80497F38  90 7C 05 B8 */	stw r3, 0x5b8(r28)
/* 80497F3C  3B E3 00 20 */	addi r31, r3, 0x20
/* 80497F40  93 FC 05 BC */	stw r31, 0x5bc(r28)
/* 80497F44  3B 3C 05 DC */	addi r25, r28, 0x5dc
/* 80497F48  7F 23 CB 78 */	mr r3, r25
/* 80497F4C  4B BE BA DC */	b __ct__12dCcD_GObjInfFv
/* 80497F50  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80497F54  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80497F58  90 19 01 20 */	stw r0, 0x120(r25)
/* 80497F5C  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha
/* 80497F60  38 03 84 0C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80497F64  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80497F68  3C 60 80 4A */	lis r3, __vt__8cM3dGCyl@ha
/* 80497F6C  38 03 84 00 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80497F70  90 19 01 38 */	stw r0, 0x138(r25)
/* 80497F74  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80497F78  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80497F7C  90 79 01 20 */	stw r3, 0x120(r25)
/* 80497F80  3B C3 00 58 */	addi r30, r3, 0x58
/* 80497F84  93 D9 01 38 */	stw r30, 0x138(r25)
/* 80497F88  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80497F8C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80497F90  90 79 00 3C */	stw r3, 0x3c(r25)
/* 80497F94  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80497F98  93 B9 01 20 */	stw r29, 0x120(r25)
/* 80497F9C  3B 83 00 84 */	addi r28, r3, 0x84
/* 80497FA0  93 99 01 38 */	stw r28, 0x138(r25)
/* 80497FA4  3C 60 80 4A */	lis r3, __vt__9daTbox2_c@ha
/* 80497FA8  38 03 84 50 */	addi r0, r3, __vt__9daTbox2_c@l
/* 80497FAC  90 1A 05 9C */	stw r0, 0x59c(r26)
/* 80497FB0  3B 3A 07 2C */	addi r25, r26, 0x72c
/* 80497FB4  7F 23 CB 78 */	mr r3, r25
/* 80497FB8  4B BD E0 E8 */	b __ct__9dBgS_AcchFv
/* 80497FBC  3C 60 80 4A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80497FC0  38 63 83 DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80497FC4  90 79 00 10 */	stw r3, 0x10(r25)
/* 80497FC8  38 03 00 0C */	addi r0, r3, 0xc
/* 80497FCC  90 19 00 14 */	stw r0, 0x14(r25)
/* 80497FD0  38 03 00 18 */	addi r0, r3, 0x18
/* 80497FD4  90 19 00 24 */	stw r0, 0x24(r25)
/* 80497FD8  38 79 00 14 */	addi r3, r25, 0x14
/* 80497FDC  4B BE 0E 8C */	b SetObj__16dBgS_PolyPassChkFv
/* 80497FE0  38 7A 09 04 */	addi r3, r26, 0x904
/* 80497FE4  4B BD DE C8 */	b __ct__12dBgS_AcchCirFv
/* 80497FE8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80497FEC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80497FF0  90 1A 09 5C */	stw r0, 0x95c(r26)
/* 80497FF4  38 7A 09 60 */	addi r3, r26, 0x960
/* 80497FF8  4B BE B7 68 */	b __ct__10dCcD_GSttsFv
/* 80497FFC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80498000  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80498004  90 1A 09 5C */	stw r0, 0x95c(r26)
/* 80498008  93 FA 09 60 */	stw r31, 0x960(r26)
/* 8049800C  3B 3A 09 80 */	addi r25, r26, 0x980
/* 80498010  7F 23 CB 78 */	mr r3, r25
/* 80498014  4B BE BA 14 */	b __ct__12dCcD_GObjInfFv
/* 80498018  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8049801C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80498020  90 19 01 20 */	stw r0, 0x120(r25)
/* 80498024  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha
/* 80498028  38 03 84 0C */	addi r0, r3, __vt__8cM3dGAab@l
/* 8049802C  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80498030  3C 60 80 4A */	lis r3, __vt__8cM3dGCyl@ha
/* 80498034  38 03 84 00 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80498038  90 19 01 38 */	stw r0, 0x138(r25)
/* 8049803C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80498040  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 80498044  90 19 01 20 */	stw r0, 0x120(r25)
/* 80498048  93 D9 01 38 */	stw r30, 0x138(r25)
/* 8049804C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80498050  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 80498054  90 19 00 3C */	stw r0, 0x3c(r25)
/* 80498058  93 B9 01 20 */	stw r29, 0x120(r25)
/* 8049805C  93 99 01 38 */	stw r28, 0x138(r25)
lbl_80498060:
/* 80498060  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 80498064  60 00 00 08 */	ori r0, r0, 8
/* 80498068  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_8049806C:
/* 8049806C  7F 63 DB 78 */	mr r3, r27
/* 80498070  4B FF ED CD */	bl create1st__9daTbox2_cFv
/* 80498074  39 61 00 30 */	addi r11, r1, 0x30
/* 80498078  4B EC A1 A0 */	b _restgpr_25
/* 8049807C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80498080  7C 08 03 A6 */	mtlr r0
/* 80498084  38 21 00 30 */	addi r1, r1, 0x30
/* 80498088  4E 80 00 20 */	blr 
