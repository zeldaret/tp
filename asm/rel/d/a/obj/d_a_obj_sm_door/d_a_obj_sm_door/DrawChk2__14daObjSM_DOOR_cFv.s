lbl_80CD8BBC:
/* 80CD8BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD8BC0  7C 08 02 A6 */	mflr r0
/* 80CD8BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD8BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD8BCC  7C 7F 1B 78 */	mr r31, r3
/* 80CD8BD0  88 83 05 BB */	lbz r4, 0x5bb(r3)
/* 80CD8BD4  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD8BD8  41 82 00 48 */	beq lbl_80CD8C20
/* 80CD8BDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD8BE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD8BE4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD8BE8  7C 05 07 74 */	extsb r5, r0
/* 80CD8BEC  4B 35 C7 75 */	bl isSwitch__10dSv_info_cCFii
/* 80CD8BF0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8BF4  40 82 00 2C */	bne lbl_80CD8C20
/* 80CD8BF8  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80CD8BFC  28 00 00 00 */	cmplwi r0, 0
/* 80CD8C00  40 82 00 20 */	bne lbl_80CD8C20
/* 80CD8C04  7F E3 FB 78 */	mr r3, r31
/* 80CD8C08  4B FF FE 39 */	bl SetDzb__14daObjSM_DOOR_cFv
/* 80CD8C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8C10  41 82 00 5C */	beq lbl_80CD8C6C
/* 80CD8C14  38 00 00 01 */	li r0, 1
/* 80CD8C18  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 80CD8C1C  48 00 00 50 */	b lbl_80CD8C6C
lbl_80CD8C20:
/* 80CD8C20  88 9F 05 BB */	lbz r4, 0x5bb(r31)
/* 80CD8C24  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD8C28  41 82 00 44 */	beq lbl_80CD8C6C
/* 80CD8C2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD8C30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD8C34  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CD8C38  7C 05 07 74 */	extsb r5, r0
/* 80CD8C3C  4B 35 C7 25 */	bl isSwitch__10dSv_info_cCFii
/* 80CD8C40  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8C44  41 82 00 28 */	beq lbl_80CD8C6C
/* 80CD8C48  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80CD8C4C  28 00 00 01 */	cmplwi r0, 1
/* 80CD8C50  40 82 00 1C */	bne lbl_80CD8C6C
/* 80CD8C54  7F E3 FB 78 */	mr r3, r31
/* 80CD8C58  4B FF FE 39 */	bl ReleaceDzb__14daObjSM_DOOR_cFv
/* 80CD8C5C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8C60  41 82 00 0C */	beq lbl_80CD8C6C
/* 80CD8C64  38 00 00 00 */	li r0, 0
/* 80CD8C68  98 1F 05 BC */	stb r0, 0x5bc(r31)
lbl_80CD8C6C:
/* 80CD8C6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD8C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD8C74  7C 08 03 A6 */	mtlr r0
/* 80CD8C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8C7C  4E 80 00 20 */	blr 
