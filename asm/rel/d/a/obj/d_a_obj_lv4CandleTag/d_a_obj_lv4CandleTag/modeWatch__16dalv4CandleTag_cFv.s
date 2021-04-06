lbl_80C5D6E0:
/* 80C5D6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D6E4  7C 08 02 A6 */	mflr r0
/* 80C5D6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5D6F0  7C 7F 1B 78 */	mr r31, r3
/* 80C5D6F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5D6F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5D6FC  88 9F 05 86 */	lbz r4, 0x586(r31)
/* 80C5D700  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5D704  7C 05 07 74 */	extsb r5, r0
/* 80C5D708  4B 3D 7C 59 */	bl isSwitch__10dSv_info_cCFii
/* 80C5D70C  2C 03 00 00 */	cmpwi r3, 0
/* 80C5D710  41 82 00 10 */	beq lbl_80C5D720
/* 80C5D714  7F E3 FB 78 */	mr r3, r31
/* 80C5D718  48 00 01 E5 */	bl init_modeEnd__16dalv4CandleTag_cFv
/* 80C5D71C  48 00 00 5C */	b lbl_80C5D778
lbl_80C5D720:
/* 80C5D720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5D724  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5D728  88 9F 05 87 */	lbz r4, 0x587(r31)
/* 80C5D72C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5D730  7C 05 07 74 */	extsb r5, r0
/* 80C5D734  4B 3D 7C 2D */	bl isSwitch__10dSv_info_cCFii
/* 80C5D738  2C 03 00 00 */	cmpwi r3, 0
/* 80C5D73C  41 82 00 3C */	beq lbl_80C5D778
/* 80C5D740  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80C5D744  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C5D748  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C5D74C  41 82 00 18 */	beq lbl_80C5D764
/* 80C5D750  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C5D754  38 A0 00 FF */	li r5, 0xff
/* 80C5D758  38 C0 00 01 */	li r6, 1
/* 80C5D75C  4B 3E B1 E5 */	bl orderEvent__17dEvLib_callback_cFiii
/* 80C5D760  48 00 00 18 */	b lbl_80C5D778
lbl_80C5D764:
/* 80C5D764  7F E3 FB 78 */	mr r3, r31
/* 80C5D768  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80C5D76C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C5D770  7D 89 03 A6 */	mtctr r12
/* 80C5D774  4E 80 04 21 */	bctrl 
lbl_80C5D778:
/* 80C5D778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5D77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D780  7C 08 03 A6 */	mtlr r0
/* 80C5D784  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D788  4E 80 00 20 */	blr 
