lbl_80D26774:
/* 80D26774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D26778  7C 08 02 A6 */	mflr r0
/* 80D2677C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D26780  39 61 00 20 */	addi r11, r1, 0x20
/* 80D26784  4B 63 BA 59 */	bl _savegpr_29
/* 80D26788  7C 7F 1B 78 */	mr r31, r3
/* 80D2678C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D26790  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D26794  40 82 00 F4 */	bne lbl_80D26888
/* 80D26798  7F E0 FB 79 */	or. r0, r31, r31
/* 80D2679C  41 82 00 E0 */	beq lbl_80D2687C
/* 80D267A0  7C 1E 03 78 */	mr r30, r0
/* 80D267A4  4B 35 1E 81 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D267A8  3C 60 80 D2 */	lis r3, __vt__14daObjVolcBom_c@ha /* 0x80D26E80@ha */
/* 80D267AC  38 03 6E 80 */	addi r0, r3, __vt__14daObjVolcBom_c@l /* 0x80D26E80@l */
/* 80D267B0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D267B4  3B BE 05 CC */	addi r29, r30, 0x5cc
/* 80D267B8  7F A3 EB 78 */	mr r3, r29
/* 80D267BC  4B 34 F8 E5 */	bl __ct__9dBgS_AcchFv
/* 80D267C0  3C 60 80 D2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D26E50@ha */
/* 80D267C4  38 63 6E 50 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D26E50@l */
/* 80D267C8  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80D267CC  38 03 00 0C */	addi r0, r3, 0xc
/* 80D267D0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D267D4  38 03 00 18 */	addi r0, r3, 0x18
/* 80D267D8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80D267DC  38 7D 00 14 */	addi r3, r29, 0x14
/* 80D267E0  4B 35 26 89 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D267E4  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80D267E8  4B 34 F6 C5 */	bl __ct__12dBgS_AcchCirFv
/* 80D267EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D267F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D267F4  90 1E 07 FC */	stw r0, 0x7fc(r30)
/* 80D267F8  38 7E 08 00 */	addi r3, r30, 0x800
/* 80D267FC  4B 35 CF 65 */	bl __ct__10dCcD_GSttsFv
/* 80D26800  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D26804  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D26808  90 7E 07 FC */	stw r3, 0x7fc(r30)
/* 80D2680C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D26810  90 1E 08 00 */	stw r0, 0x800(r30)
/* 80D26814  3B BE 08 20 */	addi r29, r30, 0x820
/* 80D26818  7F A3 EB 78 */	mr r3, r29
/* 80D2681C  4B 35 D2 0D */	bl __ct__12dCcD_GObjInfFv
/* 80D26820  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D26824  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D26828  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D2682C  3C 60 80 D2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D26E44@ha */
/* 80D26830  38 03 6E 44 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D26E44@l */
/* 80D26834  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D26838  3C 60 80 D2 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D26E38@ha */
/* 80D2683C  38 03 6E 38 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D26E38@l */
/* 80D26840  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D26844  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D26848  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D2684C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D26850  38 03 00 58 */	addi r0, r3, 0x58
/* 80D26854  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D26858  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D2685C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D26860  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D26864  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D26868  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D2686C  38 03 00 84 */	addi r0, r3, 0x84
/* 80D26870  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D26874  38 7E 09 A4 */	addi r3, r30, 0x9a4
/* 80D26878  4B 52 36 89 */	bl __ct__10dMsgFlow_cFv
lbl_80D2687C:
/* 80D2687C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D26880  60 00 00 08 */	ori r0, r0, 8
/* 80D26884  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D26888:
/* 80D26888  7F E3 FB 78 */	mr r3, r31
/* 80D2688C  4B FF E0 69 */	bl create1st__14daObjVolcBom_cFv
/* 80D26890  39 61 00 20 */	addi r11, r1, 0x20
/* 80D26894  4B 63 B9 95 */	bl _restgpr_29
/* 80D26898  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2689C  7C 08 03 A6 */	mtlr r0
/* 80D268A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D268A4  4E 80 00 20 */	blr 
