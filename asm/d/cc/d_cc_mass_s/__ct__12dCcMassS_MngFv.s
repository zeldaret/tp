lbl_80085350:
/* 80085350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80085354  7C 08 02 A6 */	mflr r0
/* 80085358  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008535C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80085360  7C 7F 1B 78 */	mr r31, r3
/* 80085364  3C 60 80 3A */	lis r3, __vt__12dCcMassS_Mng@ha
/* 80085368  38 03 72 30 */	addi r0, r3, __vt__12dCcMassS_Mng@l
/* 8008536C  90 1F 02 74 */	stw r0, 0x274(r31)
/* 80085370  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80085374  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80085378  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8008537C  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideArea@ha
/* 80085380  38 03 72 00 */	addi r0, r3, __vt__15cCcD_DivideArea@l
/* 80085384  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80085388  38 7F 00 44 */	addi r3, r31, 0x44
/* 8008538C  3C 80 80 08 */	lis r4, __ct__12dCcMassS_ObjFv@ha
/* 80085390  38 84 55 C8 */	addi r4, r4, __ct__12dCcMassS_ObjFv@l
/* 80085394  3C A0 80 03 */	lis r5, __dt__12dCcMassS_ObjFv@ha
/* 80085398  38 A5 00 F4 */	addi r5, r5, __dt__12dCcMassS_ObjFv@l
/* 8008539C  38 C0 00 20 */	li r6, 0x20
/* 800853A0  38 E0 00 0A */	li r7, 0xa
/* 800853A4  48 2D C9 BD */	bl __construct_array
/* 800853A8  38 7F 01 88 */	addi r3, r31, 0x188
/* 800853AC  3C 80 80 08 */	lis r4, __ct__12dCcMassS_ObjFv@ha
/* 800853B0  38 84 55 C8 */	addi r4, r4, __ct__12dCcMassS_ObjFv@l
/* 800853B4  3C A0 80 03 */	lis r5, __dt__12dCcMassS_ObjFv@ha
/* 800853B8  38 A5 00 F4 */	addi r5, r5, __dt__12dCcMassS_ObjFv@l
/* 800853BC  38 C0 00 20 */	li r6, 0x20
/* 800853C0  38 E0 00 02 */	li r7, 2
/* 800853C4  48 2D C9 9D */	bl __construct_array
/* 800853C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 800853CC  38 A3 36 D0 */	addi r5, r3, __vt__14cCcD_ShapeAttr@l
/* 800853D0  90 BF 01 E4 */	stw r5, 0x1e4(r31)
/* 800853D4  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 800853D8  38 83 72 18 */	addi r4, r3, __vt__8cM3dGAab@l
/* 800853DC  90 9F 01 E0 */	stw r4, 0x1e0(r31)
/* 800853E0  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha
/* 800853E4  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 800853E8  90 1F 01 FC */	stw r0, 0x1fc(r31)
/* 800853EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 800853F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 800853F4  90 7F 01 E4 */	stw r3, 0x1e4(r31)
/* 800853F8  38 03 00 58 */	addi r0, r3, 0x58
/* 800853FC  90 1F 01 FC */	stw r0, 0x1fc(r31)
/* 80085400  90 BF 02 40 */	stw r5, 0x240(r31)
/* 80085404  90 9F 02 3C */	stw r4, 0x23c(r31)
/* 80085408  38 7F 02 44 */	addi r3, r31, 0x244
/* 8008540C  48 1E 9B 7D */	bl __ct__8cM3dGCpsFv
/* 80085410  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80085414  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80085418  90 7F 02 40 */	stw r3, 0x240(r31)
/* 8008541C  38 03 00 58 */	addi r0, r3, 0x58
/* 80085420  90 1F 02 5C */	stw r0, 0x25c(r31)
/* 80085424  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 80085428  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 8008542C  90 1F 02 70 */	stw r0, 0x270(r31)
/* 80085430  7F E3 FB 78 */	mr r3, r31
/* 80085434  48 00 01 B1 */	bl Ct__12dCcMassS_MngFv
/* 80085438  7F E3 FB 78 */	mr r3, r31
/* 8008543C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80085440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80085444  7C 08 03 A6 */	mtlr r0
/* 80085448  38 21 00 10 */	addi r1, r1, 0x10
/* 8008544C  4E 80 00 20 */	blr 
