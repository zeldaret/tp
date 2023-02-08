lbl_80C81808:
/* 80C81808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8180C  7C 08 02 A6 */	mflr r0
/* 80C81810  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C81814  39 61 00 20 */	addi r11, r1, 0x20
/* 80C81818  4B 6E 09 C5 */	bl _savegpr_29
/* 80C8181C  7C 7F 1B 78 */	mr r31, r3
/* 80C81820  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C81824  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C81828  40 82 01 80 */	bne lbl_80C819A8
/* 80C8182C  7F E0 FB 79 */	or. r0, r31, r31
/* 80C81830  41 82 01 6C */	beq lbl_80C8199C
/* 80C81834  7C 1E 03 78 */	mr r30, r0
/* 80C81838  4B 3F 6D ED */	bl __ct__16dBgS_MoveBgActorFv
/* 80C8183C  3C 60 80 C8 */	lis r3, __vt__12daObjLv6Bm_c@ha /* 0x80C81FBC@ha */
/* 80C81840  38 03 1F BC */	addi r0, r3, __vt__12daObjLv6Bm_c@l /* 0x80C81FBC@l */
/* 80C81844  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C81848  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C8184C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C81850  90 1E 05 DC */	stw r0, 0x5dc(r30)
/* 80C81854  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80C81858  4B 40 1F 09 */	bl __ct__10dCcD_GSttsFv
/* 80C8185C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C81860  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C81864  90 7E 05 DC */	stw r3, 0x5dc(r30)
/* 80C81868  38 03 00 20 */	addi r0, r3, 0x20
/* 80C8186C  90 1E 05 E0 */	stw r0, 0x5e0(r30)
/* 80C81870  3B BE 06 00 */	addi r29, r30, 0x600
/* 80C81874  7F A3 EB 78 */	mr r3, r29
/* 80C81878  4B 40 21 B1 */	bl __ct__12dCcD_GObjInfFv
/* 80C8187C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C81880  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C81884  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C81888  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C81F98@ha */
/* 80C8188C  38 03 1F 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C81F98@l */
/* 80C81890  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C81894  3C 60 80 C8 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C81F8C@ha */
/* 80C81898  38 03 1F 8C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C81F8C@l */
/* 80C8189C  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C818A0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C818A4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C818A8  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C818AC  38 03 00 58 */	addi r0, r3, 0x58
/* 80C818B0  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C818B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C818B8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C818BC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C818C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C818C4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C818C8  38 03 00 84 */	addi r0, r3, 0x84
/* 80C818CC  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C818D0  3B BE 07 38 */	addi r29, r30, 0x738
/* 80C818D4  7F A3 EB 78 */	mr r3, r29
/* 80C818D8  4B 40 21 51 */	bl __ct__12dCcD_GObjInfFv
/* 80C818DC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C818E0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C818E4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C818E8  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C81F98@ha */
/* 80C818EC  38 03 1F 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C81F98@l */
/* 80C818F0  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C818F4  38 7D 01 24 */	addi r3, r29, 0x124
/* 80C818F8  4B 5E D6 91 */	bl __ct__8cM3dGCpsFv
/* 80C818FC  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80C81900  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 80C81904  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C81908  38 03 00 58 */	addi r0, r3, 0x58
/* 80C8190C  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 80C81910  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 80C81914  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 80C81918  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C8191C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C81920  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C81924  38 03 00 84 */	addi r0, r3, 0x84
/* 80C81928  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 80C8192C  3B BE 08 7C */	addi r29, r30, 0x87c
/* 80C81930  7F A3 EB 78 */	mr r3, r29
/* 80C81934  4B 40 20 F5 */	bl __ct__12dCcD_GObjInfFv
/* 80C81938  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C8193C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C81940  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C81944  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C81F98@ha */
/* 80C81948  38 03 1F 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C81F98@l */
/* 80C8194C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C81950  3C 60 80 C8 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C81F80@ha */
/* 80C81954  38 03 1F 80 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C81F80@l */
/* 80C81958  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C8195C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C81960  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C81964  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C81968  38 03 00 58 */	addi r0, r3, 0x58
/* 80C8196C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C81970  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C81974  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C81978  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C8197C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C81980  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C81984  38 03 00 84 */	addi r0, r3, 0x84
/* 80C81988  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C8198C  38 7E 0A 7C */	addi r3, r30, 0xa7c
/* 80C81990  4B 63 CE B5 */	bl __ct__16Z2SoundObjSimpleFv
/* 80C81994  38 7E 0A 9C */	addi r3, r30, 0xa9c
/* 80C81998  4B 63 CE AD */	bl __ct__16Z2SoundObjSimpleFv
lbl_80C8199C:
/* 80C8199C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C819A0  60 00 00 08 */	ori r0, r0, 8
/* 80C819A4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C819A8:
/* 80C819A8  7F E3 FB 78 */	mr r3, r31
/* 80C819AC  4B FF D1 D1 */	bl create1st__12daObjLv6Bm_cFv
/* 80C819B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C819B4  4B 6E 08 75 */	bl _restgpr_29
/* 80C819B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C819BC  7C 08 03 A6 */	mtlr r0
/* 80C819C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C819C4  4E 80 00 20 */	blr 
