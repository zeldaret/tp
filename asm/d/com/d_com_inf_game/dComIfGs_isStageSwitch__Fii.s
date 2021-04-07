lbl_8002D740:
/* 8002D740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002D744  7C 08 02 A6 */	mflr r0
/* 8002D748  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002D74C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002D750  93 C1 00 08 */	stw r30, 8(r1)
/* 8002D754  7C 7E 1B 78 */	mr r30, r3
/* 8002D758  7C 9F 23 78 */	mr r31, r4
/* 8002D75C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D764  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8002D768  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8002D76C  7D 89 03 A6 */	mtctr r12
/* 8002D770  4E 80 04 21 */	bctrl 
/* 8002D774  88 03 00 09 */	lbz r0, 9(r3)
/* 8002D778  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8002D77C  7C 1E 00 00 */	cmpw r30, r0
/* 8002D780  40 82 00 1C */	bne lbl_8002D79C
/* 8002D784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D788  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D78C  7F E4 FB 78 */	mr r4, r31
/* 8002D790  38 A0 FF FF */	li r5, -1
/* 8002D794  48 00 7B CD */	bl isSwitch__10dSv_info_cCFii
/* 8002D798  48 00 00 20 */	b lbl_8002D7B8
lbl_8002D79C:
/* 8002D79C  57 C4 28 34 */	slwi r4, r30, 5
/* 8002D7A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D7A4  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D7A8  7C 60 22 14 */	add r3, r0, r4
/* 8002D7AC  38 63 01 F0 */	addi r3, r3, 0x1f0
/* 8002D7B0  7F E4 FB 78 */	mr r4, r31
/* 8002D7B4  48 00 70 AD */	bl isSwitch__12dSv_memBit_cCFi
lbl_8002D7B8:
/* 8002D7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002D7BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002D7C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002D7C4  7C 08 03 A6 */	mtlr r0
/* 8002D7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002D7CC  4E 80 00 20 */	blr 
