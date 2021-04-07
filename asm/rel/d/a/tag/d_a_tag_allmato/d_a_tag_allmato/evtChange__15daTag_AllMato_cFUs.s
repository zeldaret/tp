lbl_80488FD8:
/* 80488FD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488FDC  7C 08 02 A6 */	mflr r0
/* 80488FE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488FE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80488FE8  4B ED 91 F5 */	bl _savegpr_29
/* 80488FEC  7C 7E 1B 78 */	mr r30, r3
/* 80488FF0  3C 60 80 49 */	lis r3, l_evtList@ha /* 0x804897BC@ha */
/* 80488FF4  38 03 97 BC */	addi r0, r3, l_evtList@l /* 0x804897BC@l */
/* 80488FF8  54 9F 1B 78 */	rlwinm r31, r4, 3, 0xd, 0x1c
/* 80488FFC  7F A0 FA 14 */	add r29, r0, r31
/* 80489000  84 1D 00 04 */	lwzu r0, 4(r29)
/* 80489004  54 00 10 3A */	slwi r0, r0, 2
/* 80489008  3C 60 80 49 */	lis r3, l_resNameList@ha /* 0x804897FC@ha */
/* 8048900C  38 63 97 FC */	addi r3, r3, l_resNameList@l /* 0x804897FC@l */
/* 80489010  7C 63 00 2E */	lwzx r3, r3, r0
/* 80489014  4B ED FB D1 */	bl strlen
/* 80489018  28 03 00 00 */	cmplwi r3, 0
/* 8048901C  41 82 00 30 */	beq lbl_8048904C
/* 80489020  80 1D 00 00 */	lwz r0, 0(r29)
/* 80489024  54 00 10 3A */	slwi r0, r0, 2
/* 80489028  3C 60 80 49 */	lis r3, l_resNameList@ha /* 0x804897FC@ha */
/* 8048902C  38 63 97 FC */	addi r3, r3, l_resNameList@l /* 0x804897FC@l */
/* 80489030  7C 03 00 2E */	lwzx r0, r3, r0
/* 80489034  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80489038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048903C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80489040  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80489044  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 80489048  4B BB D7 B9 */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_8048904C:
/* 8048904C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80489050  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80489054  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80489058  7F C4 F3 78 */	mr r4, r30
/* 8048905C  3C A0 80 49 */	lis r5, l_evtList@ha /* 0x804897BC@ha */
/* 80489060  38 A5 97 BC */	addi r5, r5, l_evtList@l /* 0x804897BC@l */
/* 80489064  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80489068  38 C0 00 FF */	li r6, 0xff
/* 8048906C  4B BB E6 ED */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80489070  B0 7E 1D 0C */	sth r3, 0x1d0c(r30)
/* 80489074  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80489078  7F C4 F3 78 */	mr r4, r30
/* 8048907C  4B BB 94 9D */	bl reset__14dEvt_control_cFPv
/* 80489080  7F C3 F3 78 */	mr r3, r30
/* 80489084  A8 9E 1D 0C */	lha r4, 0x1d0c(r30)
/* 80489088  38 A0 00 01 */	li r5, 1
/* 8048908C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80489090  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80489094  4B B9 25 51 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80489098  39 61 00 20 */	addi r11, r1, 0x20
/* 8048909C  4B ED 91 8D */	bl _restgpr_29
/* 804890A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804890A4  7C 08 03 A6 */	mtlr r0
/* 804890A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804890AC  4E 80 00 20 */	blr 
