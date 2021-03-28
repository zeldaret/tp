lbl_80484388:
/* 80484388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048438C  7C 08 02 A6 */	mflr r0
/* 80484390  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484394  38 00 00 03 */	li r0, 3
/* 80484398  90 03 05 B0 */	stw r0, 0x5b0(r3)
/* 8048439C  3C 80 80 48 */	lis r4, lit_3880@ha
/* 804843A0  C0 24 4E 2C */	lfs f1, lit_3880@l(r4)
/* 804843A4  D0 23 05 CC */	stfs f1, 0x5cc(r3)
/* 804843A8  38 80 00 01 */	li r4, 1
/* 804843AC  4B FF F7 C5 */	bl top_bg_aim_req__Q211daObjSwpush5Act_cFfs
/* 804843B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804843B4  7C 08 03 A6 */	mtlr r0
/* 804843B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804843BC  4E 80 00 20 */	blr 
