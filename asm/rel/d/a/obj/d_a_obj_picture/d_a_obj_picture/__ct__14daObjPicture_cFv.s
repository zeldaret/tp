lbl_80CAD318:
/* 80CAD318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD31C  7C 08 02 A6 */	mflr r0
/* 80CAD320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAD328  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAD32C  7C 7F 1B 78 */	mr r31, r3
/* 80CAD330  4B 36 B8 35 */	bl __ct__10fopAc_ac_cFv
/* 80CAD334  3C 60 80 CB */	lis r3, __vt__14daObjPicture_c@ha /* 0x80CAF204@ha */
/* 80CAD338  38 03 F2 04 */	addi r0, r3, __vt__14daObjPicture_c@l /* 0x80CAF204@l */
/* 80CAD33C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CAD340  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CAD344  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CAD348  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80CAD34C  38 7F 05 90 */	addi r3, r31, 0x590
/* 80CAD350  4B 3D 64 11 */	bl __ct__10dCcD_GSttsFv
/* 80CAD354  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CAD358  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CAD35C  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 80CAD360  3B C3 00 20 */	addi r30, r3, 0x20
/* 80CAD364  93 DF 05 90 */	stw r30, 0x590(r31)
/* 80CAD368  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CAD36C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CAD370  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80CAD374  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80CAD378  4B 3D 63 E9 */	bl __ct__10dCcD_GSttsFv
/* 80CAD37C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CAD380  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CAD384  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80CAD388  93 DF 05 CC */	stw r30, 0x5cc(r31)
/* 80CAD38C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CAD390  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CAD394  90 1F 06 04 */	stw r0, 0x604(r31)
/* 80CAD398  38 7F 06 08 */	addi r3, r31, 0x608
/* 80CAD39C  4B 3D 63 C5 */	bl __ct__10dCcD_GSttsFv
/* 80CAD3A0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CAD3A4  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CAD3A8  90 1F 06 04 */	stw r0, 0x604(r31)
/* 80CAD3AC  93 DF 06 08 */	stw r30, 0x608(r31)
/* 80CAD3B0  38 7F 06 28 */	addi r3, r31, 0x628
/* 80CAD3B4  3C 80 80 CB */	lis r4, __ct__8dCcD_CpsFv@ha /* 0x80CAD5EC@ha */
/* 80CAD3B8  38 84 D5 EC */	addi r4, r4, __ct__8dCcD_CpsFv@l /* 0x80CAD5EC@l */
/* 80CAD3BC  3C A0 80 CB */	lis r5, __dt__8dCcD_CpsFv@ha /* 0x80CAD528@ha */
/* 80CAD3C0  38 A5 D5 28 */	addi r5, r5, __dt__8dCcD_CpsFv@l /* 0x80CAD528@l */
/* 80CAD3C4  38 C0 01 44 */	li r6, 0x144
/* 80CAD3C8  38 E0 00 02 */	li r7, 2
/* 80CAD3CC  4B 6B 49 95 */	bl __construct_array
/* 80CAD3D0  3B DF 08 B0 */	addi r30, r31, 0x8b0
/* 80CAD3D4  7F C3 F3 78 */	mr r3, r30
/* 80CAD3D8  4B 3D 66 51 */	bl __ct__12dCcD_GObjInfFv
/* 80CAD3DC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CAD3E0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CAD3E4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CAD3E8  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha /* 0x80CAF234@ha */
/* 80CAD3EC  38 03 F2 34 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CAF234@l */
/* 80CAD3F0  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80CAD3F4  3C 60 80 CB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CAF228@ha */
/* 80CAD3F8  38 03 F2 28 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CAF228@l */
/* 80CAD3FC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CAD400  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CAD404  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CAD408  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CAD40C  38 03 00 58 */	addi r0, r3, 0x58
/* 80CAD410  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CAD414  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CAD418  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CAD41C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CAD420  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CAD424  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CAD428  38 03 00 84 */	addi r0, r3, 0x84
/* 80CAD42C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CAD430  38 7F 09 EC */	addi r3, r31, 0x9ec
/* 80CAD434  3C 80 80 CB */	lis r4, __ct__8dCcD_CpsFv@ha /* 0x80CAD5EC@ha */
/* 80CAD438  38 84 D5 EC */	addi r4, r4, __ct__8dCcD_CpsFv@l /* 0x80CAD5EC@l */
/* 80CAD43C  3C A0 80 CB */	lis r5, __dt__8dCcD_CpsFv@ha /* 0x80CAD528@ha */
/* 80CAD440  38 A5 D5 28 */	addi r5, r5, __dt__8dCcD_CpsFv@l /* 0x80CAD528@l */
/* 80CAD444  38 C0 01 44 */	li r6, 0x144
/* 80CAD448  38 E0 00 02 */	li r7, 2
/* 80CAD44C  4B 6B 49 15 */	bl __construct_array
/* 80CAD450  38 7F 0C BC */	addi r3, r31, 0xcbc
/* 80CAD454  38 80 00 00 */	li r4, 0
/* 80CAD458  38 A0 00 08 */	li r5, 8
/* 80CAD45C  4B 35 5F FD */	bl memset
/* 80CAD460  38 00 00 00 */	li r0, 0
/* 80CAD464  90 1F 0C B8 */	stw r0, 0xcb8(r31)
/* 80CAD468  90 1F 0C B4 */	stw r0, 0xcb4(r31)
/* 80CAD46C  38 7F 0C AC */	addi r3, r31, 0xcac
/* 80CAD470  38 80 00 00 */	li r4, 0
/* 80CAD474  38 A0 00 08 */	li r5, 8
/* 80CAD478  4B 35 5F E1 */	bl memset
/* 80CAD47C  7F E3 FB 78 */	mr r3, r31
/* 80CAD480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAD484  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAD488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD48C  7C 08 03 A6 */	mtlr r0
/* 80CAD490  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD494  4E 80 00 20 */	blr 
