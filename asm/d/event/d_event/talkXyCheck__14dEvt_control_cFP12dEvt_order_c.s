lbl_80041B58:
/* 80041B58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80041B5C  7C 08 02 A6 */	mflr r0
/* 80041B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80041B64  39 61 00 20 */	addi r11, r1, 0x20
/* 80041B68  48 32 06 6D */	bl _savegpr_27
/* 80041B6C  7C 7B 1B 78 */	mr r27, r3
/* 80041B70  7C 9C 23 78 */	mr r28, r4
/* 80041B74  3C 60 80 38 */	lis r3, d_event_d_event__stringBase0@ha
/* 80041B78  38 63 9D 80 */	addi r3, r3, d_event_d_event__stringBase0@l
/* 80041B7C  3B C3 00 23 */	addi r30, r3, 0x23
/* 80041B80  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 80041B84  A0 04 00 00 */	lhz r0, 0(r4)
/* 80041B88  2C 00 00 07 */	cmpwi r0, 7
/* 80041B8C  41 82 00 24 */	beq lbl_80041BB0
/* 80041B90  40 80 00 30 */	bge lbl_80041BC0
/* 80041B94  2C 00 00 06 */	cmpwi r0, 6
/* 80041B98  40 80 00 08 */	bge lbl_80041BA0
/* 80041B9C  48 00 00 24 */	b lbl_80041BC0
lbl_80041BA0:
/* 80041BA0  3B A0 00 00 */	li r29, 0
/* 80041BA4  38 00 00 01 */	li r0, 1
/* 80041BA8  98 1B 00 ED */	stb r0, 0xed(r27)
/* 80041BAC  48 00 00 24 */	b lbl_80041BD0
lbl_80041BB0:
/* 80041BB0  38 00 00 02 */	li r0, 2
/* 80041BB4  98 1B 00 ED */	stb r0, 0xed(r27)
/* 80041BB8  3B A0 00 01 */	li r29, 1
/* 80041BBC  48 00 00 14 */	b lbl_80041BD0
lbl_80041BC0:
/* 80041BC0  38 00 00 00 */	li r0, 0
/* 80041BC4  98 1B 00 ED */	stb r0, 0xed(r27)
/* 80041BC8  38 60 00 00 */	li r3, 0
/* 80041BCC  48 00 00 AC */	b lbl_80041C78
lbl_80041BD0:
/* 80041BD0  7F A3 EB 78 */	mr r3, r29
/* 80041BD4  4B FE C3 49 */	bl dComIfGp_getSelectItem__Fi
/* 80041BD8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80041BDC  28 00 00 FF */	cmplwi r0, 0xff
/* 80041BE0  40 82 00 0C */	bne lbl_80041BEC
/* 80041BE4  38 60 00 00 */	li r3, 0
/* 80041BE8  48 00 00 90 */	b lbl_80041C78
lbl_80041BEC:
/* 80041BEC  28 1F 00 00 */	cmplwi r31, 0
/* 80041BF0  41 82 00 14 */	beq lbl_80041C04
/* 80041BF4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80041BF8  54 00 06 B4 */	rlwinm r0, r0, 0, 0x1a, 0x1a
/* 80041BFC  2C 00 00 20 */	cmpwi r0, 0x20
/* 80041C00  41 82 00 0C */	beq lbl_80041C0C
lbl_80041C04:
/* 80041C04  38 60 00 00 */	li r3, 0
/* 80041C08  48 00 00 70 */	b lbl_80041C78
lbl_80041C0C:
/* 80041C0C  7F 63 DB 78 */	mr r3, r27
/* 80041C10  7F 84 E3 78 */	mr r4, r28
/* 80041C14  38 A0 00 01 */	li r5, 1
/* 80041C18  38 C0 00 01 */	li r6, 1
/* 80041C1C  4B FF FD 8D */	bl commonCheck__14dEvt_control_cFP12dEvt_order_cUsUs
/* 80041C20  2C 03 00 00 */	cmpwi r3, 0
/* 80041C24  41 82 00 50 */	beq lbl_80041C74
/* 80041C28  38 00 00 01 */	li r0, 1
/* 80041C2C  98 1B 00 E4 */	stb r0, 0xe4(r27)
/* 80041C30  7F A3 EB 78 */	mr r3, r29
/* 80041C34  4B FE C2 E9 */	bl dComIfGp_getSelectItem__Fi
/* 80041C38  98 7B 00 EE */	stb r3, 0xee(r27)
/* 80041C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80041C40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80041C44  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80041C48  7F E3 FB 78 */	mr r3, r31
/* 80041C4C  7F C4 F3 78 */	mr r4, r30
/* 80041C50  38 A0 00 FF */	li r5, 0xff
/* 80041C54  38 C0 FF FF */	li r6, -1
/* 80041C58  48 00 58 BD */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80041C5C  B0 7B 00 DE */	sth r3, 0xde(r27)
/* 80041C60  7F E3 FB 78 */	mr r3, r31
/* 80041C64  A8 9B 00 DE */	lha r4, 0xde(r27)
/* 80041C68  48 00 5D 1D */	bl order__16dEvent_manager_cFs
/* 80041C6C  38 60 00 01 */	li r3, 1
/* 80041C70  48 00 00 08 */	b lbl_80041C78
lbl_80041C74:
/* 80041C74  38 60 00 00 */	li r3, 0
lbl_80041C78:
/* 80041C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80041C7C  48 32 05 A5 */	bl _restgpr_27
/* 80041C80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80041C84  7C 08 03 A6 */	mtlr r0
/* 80041C88  38 21 00 20 */	addi r1, r1, 0x20
/* 80041C8C  4E 80 00 20 */	blr 
