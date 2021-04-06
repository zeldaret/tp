lbl_80CDEAA4:
/* 80CDEAA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDEAA8  7C 08 02 A6 */	mflr r0
/* 80CDEAAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDEAB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDEAB4  7C 7F 1B 78 */	mr r31, r3
/* 80CDEAB8  88 03 05 C5 */	lbz r0, 0x5c5(r3)
/* 80CDEABC  28 00 00 00 */	cmplwi r0, 0
/* 80CDEAC0  40 82 00 28 */	bne lbl_80CDEAE8
/* 80CDEAC4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDEAC8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CDEACC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDEAD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDEAD4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CDEAD8  7C 05 07 74 */	extsb r5, r0
/* 80CDEADC  4B 35 68 85 */	bl isSwitch__10dSv_info_cCFii
/* 80CDEAE0  2C 03 00 00 */	cmpwi r3, 0
/* 80CDEAE4  41 82 00 18 */	beq lbl_80CDEAFC
lbl_80CDEAE8:
/* 80CDEAE8  38 00 00 00 */	li r0, 0
/* 80CDEAEC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CDEAF0  38 00 00 01 */	li r0, 1
/* 80CDEAF4  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80CDEAF8  48 00 00 94 */	b lbl_80CDEB8C
lbl_80CDEAFC:
/* 80CDEAFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDEB00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDEB04  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80CDEB08  28 00 00 00 */	cmplwi r0, 0
/* 80CDEB0C  40 82 00 18 */	bne lbl_80CDEB24
/* 80CDEB10  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CDEB14  38 63 2D 84 */	addi r3, r3, 0x2d84
/* 80CDEB18  38 80 00 02 */	li r4, 2
/* 80CDEB1C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CDEB20  4B 5E CB CD */	bl startWindStoneSound__13Z2WolfHowlMgrFScP3Vec
lbl_80CDEB24:
/* 80CDEB24  38 00 00 00 */	li r0, 0
/* 80CDEB28  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CDEB2C  7F E3 FB 78 */	mr r3, r31
/* 80CDEB30  48 00 02 6D */	bl chkWlfInRange__12daSmWStone_cFv
/* 80CDEB34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDEB38  41 82 00 54 */	beq lbl_80CDEB8C
/* 80CDEB3C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80CDEB40  60 00 00 80 */	ori r0, r0, 0x80
/* 80CDEB44  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CDEB48  38 00 00 41 */	li r0, 0x41
/* 80CDEB4C  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 80CDEB50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDEB54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDEB58  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CDEB5C  28 03 00 00 */	cmplwi r3, 0
/* 80CDEB60  41 82 00 2C */	beq lbl_80CDEB8C
/* 80CDEB64  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CDEB68  81 8C 02 9C */	lwz r12, 0x29c(r12)
/* 80CDEB6C  7D 89 03 A6 */	mtctr r12
/* 80CDEB70  4E 80 04 21 */	bctrl 
/* 80CDEB74  2C 03 00 00 */	cmpwi r3, 0
/* 80CDEB78  41 82 00 14 */	beq lbl_80CDEB8C
/* 80CDEB7C  38 00 00 00 */	li r0, 0
/* 80CDEB80  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CDEB84  38 00 00 01 */	li r0, 1
/* 80CDEB88  98 1F 05 C4 */	stb r0, 0x5c4(r31)
lbl_80CDEB8C:
/* 80CDEB8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDEB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDEB94  7C 08 03 A6 */	mtlr r0
/* 80CDEB98  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDEB9C  4E 80 00 20 */	blr 
