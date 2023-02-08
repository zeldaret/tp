lbl_801C6210:
/* 801C6210  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C6214  7C 08 02 A6 */	mflr r0
/* 801C6218  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C621C  39 61 00 30 */	addi r11, r1, 0x30
/* 801C6220  48 19 BF AD */	bl _savegpr_25
/* 801C6224  7C 7F 1B 78 */	mr r31, r3
/* 801C6228  7C 9A 23 78 */	mr r26, r4
/* 801C622C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801C6230  40 82 00 18 */	bne lbl_801C6248
/* 801C6234  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C6238  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C623C  88 03 09 D8 */	lbz r0, 0x9d8(r3)
/* 801C6240  28 00 00 00 */	cmplwi r0, 0
/* 801C6244  41 82 01 F4 */	beq lbl_801C6438
lbl_801C6248:
/* 801C6248  3B 60 00 00 */	li r27, 0
/* 801C624C  3B 20 00 00 */	li r25, 0
/* 801C6250  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C6254  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_801C6258:
/* 801C6258  7F BE CA 14 */	add r29, r30, r25
/* 801C625C  7F 9F CA 14 */	add r28, r31, r25
/* 801C6260  80 7C 00 4C */	lwz r3, 0x4c(r28)
/* 801C6264  C0 3D 09 58 */	lfs f1, 0x958(r29)
/* 801C6268  C0 5D 09 70 */	lfs f2, 0x970(r29)
/* 801C626C  48 08 E3 45 */	bl paneTrans__8CPaneMgrFff
/* 801C6270  C0 1D 09 40 */	lfs f0, 0x940(r29)
/* 801C6274  80 7C 00 4C */	lwz r3, 0x4c(r28)
/* 801C6278  80 63 00 04 */	lwz r3, 4(r3)
/* 801C627C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C6280  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C6284  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6288  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C628C  7D 89 03 A6 */	mtctr r12
/* 801C6290  4E 80 04 21 */	bctrl 
/* 801C6294  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 801C6298  C0 3D 07 A8 */	lfs f1, 0x7a8(r29)
/* 801C629C  C0 5D 07 C0 */	lfs f2, 0x7c0(r29)
/* 801C62A0  48 08 E3 11 */	bl paneTrans__8CPaneMgrFff
/* 801C62A4  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 801C62A8  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 801C62AC  80 63 00 04 */	lwz r3, 4(r3)
/* 801C62B0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C62B4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C62B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C62BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C62C0  7D 89 03 A6 */	mtctr r12
/* 801C62C4  4E 80 04 21 */	bctrl 
/* 801C62C8  80 7C 00 7C */	lwz r3, 0x7c(r28)
/* 801C62CC  C0 3D 07 F0 */	lfs f1, 0x7f0(r29)
/* 801C62D0  C0 5D 08 08 */	lfs f2, 0x808(r29)
/* 801C62D4  48 08 E2 DD */	bl paneTrans__8CPaneMgrFff
/* 801C62D8  C0 1D 07 D8 */	lfs f0, 0x7d8(r29)
/* 801C62DC  80 7C 00 7C */	lwz r3, 0x7c(r28)
/* 801C62E0  80 63 00 04 */	lwz r3, 4(r3)
/* 801C62E4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C62E8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C62EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C62F0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C62F4  7D 89 03 A6 */	mtctr r12
/* 801C62F8  4E 80 04 21 */	bctrl 
/* 801C62FC  80 7C 00 94 */	lwz r3, 0x94(r28)
/* 801C6300  C0 3D 08 38 */	lfs f1, 0x838(r29)
/* 801C6304  C0 5D 08 50 */	lfs f2, 0x850(r29)
/* 801C6308  48 08 E2 A9 */	bl paneTrans__8CPaneMgrFff
/* 801C630C  C0 1D 08 20 */	lfs f0, 0x820(r29)
/* 801C6310  80 7C 00 94 */	lwz r3, 0x94(r28)
/* 801C6314  80 63 00 04 */	lwz r3, 4(r3)
/* 801C6318  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C631C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C6320  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6324  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C6328  7D 89 03 A6 */	mtctr r12
/* 801C632C  4E 80 04 21 */	bctrl 
/* 801C6330  80 7C 00 AC */	lwz r3, 0xac(r28)
/* 801C6334  C0 3D 08 80 */	lfs f1, 0x880(r29)
/* 801C6338  C0 5D 08 98 */	lfs f2, 0x898(r29)
/* 801C633C  48 08 E2 75 */	bl paneTrans__8CPaneMgrFff
/* 801C6340  C0 1D 08 68 */	lfs f0, 0x868(r29)
/* 801C6344  80 7C 00 AC */	lwz r3, 0xac(r28)
/* 801C6348  80 63 00 04 */	lwz r3, 4(r3)
/* 801C634C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C6350  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C6354  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6358  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C635C  7D 89 03 A6 */	mtctr r12
/* 801C6360  4E 80 04 21 */	bctrl 
/* 801C6364  80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 801C6368  C0 3D 08 C8 */	lfs f1, 0x8c8(r29)
/* 801C636C  C0 5D 08 E0 */	lfs f2, 0x8e0(r29)
/* 801C6370  48 08 E2 41 */	bl paneTrans__8CPaneMgrFff
/* 801C6374  C0 1D 08 B0 */	lfs f0, 0x8b0(r29)
/* 801C6378  80 7C 00 C4 */	lwz r3, 0xc4(r28)
/* 801C637C  80 63 00 04 */	lwz r3, 4(r3)
/* 801C6380  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C6384  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C6388  81 83 00 00 */	lwz r12, 0(r3)
/* 801C638C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C6390  7D 89 03 A6 */	mtctr r12
/* 801C6394  4E 80 04 21 */	bctrl 
/* 801C6398  80 7C 00 DC */	lwz r3, 0xdc(r28)
/* 801C639C  C0 3D 09 10 */	lfs f1, 0x910(r29)
/* 801C63A0  C0 5D 09 28 */	lfs f2, 0x928(r29)
/* 801C63A4  48 08 E2 0D */	bl paneTrans__8CPaneMgrFff
/* 801C63A8  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 801C63AC  80 7C 00 DC */	lwz r3, 0xdc(r28)
/* 801C63B0  80 63 00 04 */	lwz r3, 4(r3)
/* 801C63B4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C63B8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C63BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C63C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C63C4  7D 89 03 A6 */	mtctr r12
/* 801C63C8  4E 80 04 21 */	bctrl 
/* 801C63CC  3B 7B 00 01 */	addi r27, r27, 1
/* 801C63D0  2C 1B 00 06 */	cmpwi r27, 6
/* 801C63D4  3B 39 00 04 */	addi r25, r25, 4
/* 801C63D8  41 80 FE 80 */	blt lbl_801C6258
/* 801C63DC  3B C0 00 00 */	li r30, 0
/* 801C63E0  3B 60 00 00 */	li r27, 0
/* 801C63E4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C63E8  3B 23 EB C8 */	addi r25, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_801C63EC:
/* 801C63EC  7F 99 DA 14 */	add r28, r25, r27
/* 801C63F0  3B BB 00 F4 */	addi r29, r27, 0xf4
/* 801C63F4  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801C63F8  C0 3C 09 90 */	lfs f1, 0x990(r28)
/* 801C63FC  C0 5C 09 9C */	lfs f2, 0x99c(r28)
/* 801C6400  48 08 E1 B1 */	bl paneTrans__8CPaneMgrFff
/* 801C6404  C0 1C 09 88 */	lfs f0, 0x988(r28)
/* 801C6408  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801C640C  80 63 00 04 */	lwz r3, 4(r3)
/* 801C6410  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C6414  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C6418  81 83 00 00 */	lwz r12, 0(r3)
/* 801C641C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C6420  7D 89 03 A6 */	mtctr r12
/* 801C6424  4E 80 04 21 */	bctrl 
/* 801C6428  3B DE 00 01 */	addi r30, r30, 1
/* 801C642C  2C 1E 00 02 */	cmpwi r30, 2
/* 801C6430  3B 7B 00 04 */	addi r27, r27, 4
/* 801C6434  41 80 FF B8 */	blt lbl_801C63EC
lbl_801C6438:
/* 801C6438  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C643C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C6440  88 03 06 B4 */	lbz r0, 0x6b4(r3)
/* 801C6444  28 00 00 00 */	cmplwi r0, 0
/* 801C6448  40 82 00 0C */	bne lbl_801C6454
/* 801C644C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801C6450  41 82 01 34 */	beq lbl_801C6584
lbl_801C6454:
/* 801C6454  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 801C6458  28 03 00 00 */	cmplwi r3, 0
/* 801C645C  41 82 00 44 */	beq lbl_801C64A0
/* 801C6460  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C6464  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C6468  C0 24 06 60 */	lfs f1, 0x660(r4)
/* 801C646C  C0 44 06 64 */	lfs f2, 0x664(r4)
/* 801C6470  48 08 E1 41 */	bl paneTrans__8CPaneMgrFff
/* 801C6474  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C6478  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C647C  C0 03 06 68 */	lfs f0, 0x668(r3)
/* 801C6480  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 801C6484  80 63 00 04 */	lwz r3, 4(r3)
/* 801C6488  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C648C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C6490  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6494  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C6498  7D 89 03 A6 */	mtctr r12
/* 801C649C  4E 80 04 21 */	bctrl 
lbl_801C64A0:
/* 801C64A0  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 801C64A4  28 03 00 00 */	cmplwi r3, 0
/* 801C64A8  41 82 00 44 */	beq lbl_801C64EC
/* 801C64AC  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C64B0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C64B4  C0 24 06 6C */	lfs f1, 0x66c(r4)
/* 801C64B8  C0 44 06 70 */	lfs f2, 0x670(r4)
/* 801C64BC  48 08 E0 F5 */	bl paneTrans__8CPaneMgrFff
/* 801C64C0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C64C4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C64C8  C0 03 06 74 */	lfs f0, 0x674(r3)
/* 801C64CC  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 801C64D0  80 63 00 04 */	lwz r3, 4(r3)
/* 801C64D4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C64D8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C64DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C64E0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C64E4  7D 89 03 A6 */	mtctr r12
/* 801C64E8  4E 80 04 21 */	bctrl 
lbl_801C64EC:
/* 801C64EC  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 801C64F0  28 03 00 00 */	cmplwi r3, 0
/* 801C64F4  41 82 00 44 */	beq lbl_801C6538
/* 801C64F8  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C64FC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C6500  C0 24 06 78 */	lfs f1, 0x678(r4)
/* 801C6504  C0 44 06 7C */	lfs f2, 0x67c(r4)
/* 801C6508  48 08 E0 A9 */	bl paneTrans__8CPaneMgrFff
/* 801C650C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C6510  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C6514  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 801C6518  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 801C651C  80 63 00 04 */	lwz r3, 4(r3)
/* 801C6520  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C6524  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C6528  81 83 00 00 */	lwz r12, 0(r3)
/* 801C652C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C6530  7D 89 03 A6 */	mtctr r12
/* 801C6534  4E 80 04 21 */	bctrl 
lbl_801C6538:
/* 801C6538  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 801C653C  28 03 00 00 */	cmplwi r3, 0
/* 801C6540  41 82 00 44 */	beq lbl_801C6584
/* 801C6544  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C6548  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C654C  C0 24 06 84 */	lfs f1, 0x684(r4)
/* 801C6550  C0 44 06 88 */	lfs f2, 0x688(r4)
/* 801C6554  48 08 E0 5D */	bl paneTrans__8CPaneMgrFff
/* 801C6558  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C655C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C6560  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 801C6564  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 801C6568  80 63 00 04 */	lwz r3, 4(r3)
/* 801C656C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C6570  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C6574  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6578  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C657C  7D 89 03 A6 */	mtctr r12
/* 801C6580  4E 80 04 21 */	bctrl 
lbl_801C6584:
/* 801C6584  39 61 00 30 */	addi r11, r1, 0x30
/* 801C6588  48 19 BC 91 */	bl _restgpr_25
/* 801C658C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C6590  7C 08 03 A6 */	mtlr r0
/* 801C6594  38 21 00 30 */	addi r1, r1, 0x30
/* 801C6598  4E 80 00 20 */	blr 
