lbl_80CCBC08:
/* 80CCBC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCBC0C  7C 08 02 A6 */	mflr r0
/* 80CCBC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCBC14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCBC18  7C 7F 1B 78 */	mr r31, r3
/* 80CCBC1C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80CCBC20  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80CCBC24  41 82 00 78 */	beq lbl_80CCBC9C
/* 80CCBC28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCBC2C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CCBC30  80 04 5F 1C */	lwz r0, 0x5f1c(r4)
/* 80CCBC34  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80CCBC38  41 82 00 64 */	beq lbl_80CCBC9C
/* 80CCBC3C  3C 60 80 CD */	lis r3, l_arcName@ha
/* 80CCBC40  80 03 CC F0 */	lwz r0, l_arcName@l(r3)
/* 80CCBC44  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80CCBC48  38 64 4F F8 */	addi r3, r4, 0x4ff8
/* 80CCBC4C  7F E4 FB 78 */	mr r4, r31
/* 80CCBC50  3C A0 80 CD */	lis r5, l_eventName@ha
/* 80CCBC54  38 A5 CC F8 */	addi r5, r5, l_eventName@l
/* 80CCBC58  80 A5 00 00 */	lwz r5, 0(r5)
/* 80CCBC5C  38 C0 00 FF */	li r6, 0xff
/* 80CCBC60  4B 37 BA F8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80CCBC64  B0 7F 05 EC */	sth r3, 0x5ec(r31)
/* 80CCBC68  7F E3 FB 78 */	mr r3, r31
/* 80CCBC6C  A8 9F 05 EC */	lha r4, 0x5ec(r31)
/* 80CCBC70  38 A0 00 FF */	li r5, 0xff
/* 80CCBC74  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CCBC78  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CCBC7C  38 E0 00 00 */	li r7, 0
/* 80CCBC80  39 00 00 01 */	li r8, 1
/* 80CCBC84  4B 34 F9 F8 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CCBC88  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CCBC8C  60 00 00 02 */	ori r0, r0, 2
/* 80CCBC90  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80CCBC94  38 00 00 01 */	li r0, 1
/* 80CCBC98  98 1F 05 F0 */	stb r0, 0x5f0(r31)
lbl_80CCBC9C:
/* 80CCBC9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCBCA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCBCA4  7C 08 03 A6 */	mtlr r0
/* 80CCBCA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCBCAC  4E 80 00 20 */	blr 
