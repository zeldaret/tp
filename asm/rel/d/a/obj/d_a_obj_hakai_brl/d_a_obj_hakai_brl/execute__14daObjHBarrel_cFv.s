lbl_80C16CA8:
/* 80C16CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16CAC  7C 08 02 A6 */	mflr r0
/* 80C16CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16CB8  7C 7F 1B 78 */	mr r31, r3
/* 80C16CBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C16CC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C16CC4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80C16CC8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80C16CCC  41 82 00 14 */	beq lbl_80C16CE0
/* 80C16CD0  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 80C16CD4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C16CD8  90 1F 06 50 */	stw r0, 0x650(r31)
/* 80C16CDC  48 00 00 10 */	b lbl_80C16CEC
lbl_80C16CE0:
/* 80C16CE0  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 80C16CE4  60 00 00 01 */	ori r0, r0, 1
/* 80C16CE8  90 1F 06 50 */	stw r0, 0x650(r31)
lbl_80C16CEC:
/* 80C16CEC  7F E3 FB 78 */	mr r3, r31
/* 80C16CF0  48 00 01 61 */	bl hitAction__14daObjHBarrel_cFv
/* 80C16CF4  7F E3 FB 78 */	mr r3, r31
/* 80C16CF8  48 00 00 F5 */	bl setModelMtx__14daObjHBarrel_cFv
/* 80C16CFC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C16D00  7C 03 07 74 */	extsb r3, r0
/* 80C16D04  4B 41 63 69 */	bl dComIfGp_getReverb__Fi
/* 80C16D08  7C 65 1B 78 */	mr r5, r3
/* 80C16D0C  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C16D10  38 80 00 00 */	li r4, 0
/* 80C16D14  81 9F 07 00 */	lwz r12, 0x700(r31)
/* 80C16D18  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C16D1C  7D 89 03 A6 */	mtctr r12
/* 80C16D20  4E 80 04 21 */	bctrl 
/* 80C16D24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C16D28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C16D2C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C16D30  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 80C16D34  4B 64 DE 75 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C16D38  38 60 00 01 */	li r3, 1
/* 80C16D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16D44  7C 08 03 A6 */	mtlr r0
/* 80C16D48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16D4C  4E 80 00 20 */	blr 
