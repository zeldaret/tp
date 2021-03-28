lbl_8067BAEC:
/* 8067BAEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8067BAF0  7C 08 02 A6 */	mflr r0
/* 8067BAF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067BAF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8067BAFC  4B CE 66 D8 */	b _savegpr_27
/* 8067BB00  7C 7F 1B 78 */	mr r31, r3
/* 8067BB04  4B 99 D0 60 */	b __ct__10fopAc_ac_cFv
/* 8067BB08  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 8067BB0C  4B C4 54 58 */	b __ct__15Z2CreatureEnemyFv
/* 8067BB10  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 8067BB14  4B 9F A3 98 */	b __ct__12dBgS_AcchCirFv
/* 8067BB18  3B 9F 07 08 */	addi r28, r31, 0x708
/* 8067BB1C  7F 83 E3 78 */	mr r3, r28
/* 8067BB20  4B 9F A5 80 */	b __ct__9dBgS_AcchFv
/* 8067BB24  3C 60 80 68 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8067BB28  38 63 C6 54 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8067BB2C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8067BB30  38 03 00 0C */	addi r0, r3, 0xc
/* 8067BB34  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8067BB38  38 03 00 18 */	addi r0, r3, 0x18
/* 8067BB3C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8067BB40  38 7C 00 14 */	addi r3, r28, 0x14
/* 8067BB44  4B 9F D3 24 */	b SetObj__16dBgS_PolyPassChkFv
/* 8067BB48  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8067BB4C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8067BB50  90 1F 08 F8 */	stw r0, 0x8f8(r31)
/* 8067BB54  38 7F 08 FC */	addi r3, r31, 0x8fc
/* 8067BB58  4B A0 7C 08 */	b __ct__10dCcD_GSttsFv
/* 8067BB5C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8067BB60  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8067BB64  90 7F 08 F8 */	stw r3, 0x8f8(r31)
/* 8067BB68  3B C3 00 20 */	addi r30, r3, 0x20
/* 8067BB6C  93 DF 08 FC */	stw r30, 0x8fc(r31)
/* 8067BB70  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8067BB74  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8067BB78  90 1F 09 34 */	stw r0, 0x934(r31)
/* 8067BB7C  38 7F 09 38 */	addi r3, r31, 0x938
/* 8067BB80  4B A0 7B E0 */	b __ct__10dCcD_GSttsFv
/* 8067BB84  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8067BB88  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 8067BB8C  90 1F 09 34 */	stw r0, 0x934(r31)
/* 8067BB90  93 DF 09 38 */	stw r30, 0x938(r31)
/* 8067BB94  3B 7F 09 58 */	addi r27, r31, 0x958
/* 8067BB98  7F 63 DB 78 */	mr r3, r27
/* 8067BB9C  4B A0 7E 8C */	b __ct__12dCcD_GObjInfFv
/* 8067BBA0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8067BBA4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8067BBA8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8067BBAC  3C 60 80 68 */	lis r3, __vt__8cM3dGAab@ha
/* 8067BBB0  38 03 C6 48 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8067BBB4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8067BBB8  3C 60 80 68 */	lis r3, __vt__8cM3dGSph@ha
/* 8067BBBC  38 03 C6 3C */	addi r0, r3, __vt__8cM3dGSph@l
/* 8067BBC0  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8067BBC4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8067BBC8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8067BBCC  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8067BBD0  3B C3 00 58 */	addi r30, r3, 0x58
/* 8067BBD4  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8067BBD8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8067BBDC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8067BBE0  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8067BBE4  3B A3 00 2C */	addi r29, r3, 0x2c
/* 8067BBE8  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8067BBEC  3B 83 00 84 */	addi r28, r3, 0x84
/* 8067BBF0  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8067BBF4  3B 7F 0A 90 */	addi r27, r31, 0xa90
/* 8067BBF8  7F 63 DB 78 */	mr r3, r27
/* 8067BBFC  4B A0 7E 2C */	b __ct__12dCcD_GObjInfFv
/* 8067BC00  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8067BC04  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8067BC08  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8067BC0C  3C 60 80 68 */	lis r3, __vt__8cM3dGAab@ha
/* 8067BC10  38 03 C6 48 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8067BC14  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8067BC18  3C 60 80 68 */	lis r3, __vt__8cM3dGSph@ha
/* 8067BC1C  38 03 C6 3C */	addi r0, r3, __vt__8cM3dGSph@l
/* 8067BC20  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8067BC24  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8067BC28  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 8067BC2C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8067BC30  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8067BC34  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8067BC38  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 8067BC3C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8067BC40  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8067BC44  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8067BC48  3B 7F 0B C8 */	addi r27, r31, 0xbc8
/* 8067BC4C  7F 63 DB 78 */	mr r3, r27
/* 8067BC50  4B A0 7D D8 */	b __ct__12dCcD_GObjInfFv
/* 8067BC54  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8067BC58  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8067BC5C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8067BC60  3C 60 80 68 */	lis r3, __vt__8cM3dGAab@ha
/* 8067BC64  38 03 C6 48 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8067BC68  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8067BC6C  3C 60 80 68 */	lis r3, __vt__8cM3dGCyl@ha
/* 8067BC70  38 03 C6 30 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8067BC74  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8067BC78  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8067BC7C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8067BC80  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8067BC84  38 03 00 58 */	addi r0, r3, 0x58
/* 8067BC88  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8067BC8C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8067BC90  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8067BC94  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8067BC98  38 03 00 2C */	addi r0, r3, 0x2c
/* 8067BC9C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8067BCA0  38 03 00 84 */	addi r0, r3, 0x84
/* 8067BCA4  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8067BCA8  7F E3 FB 78 */	mr r3, r31
/* 8067BCAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8067BCB0  4B CE 65 70 */	b _restgpr_27
/* 8067BCB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067BCB8  7C 08 03 A6 */	mtlr r0
/* 8067BCBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8067BCC0  4E 80 00 20 */	blr 
