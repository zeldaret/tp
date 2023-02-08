lbl_809FA1C4:
/* 809FA1C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809FA1C8  7C 08 02 A6 */	mflr r0
/* 809FA1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809FA1D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809FA1D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809FA1D8  7C 7F 1B 78 */	mr r31, r3
/* 809FA1DC  3C 80 80 A0 */	lis r4, lit_4803@ha /* 0x80A01054@ha */
/* 809FA1E0  38 A4 10 54 */	addi r5, r4, lit_4803@l /* 0x80A01054@l */
/* 809FA1E4  80 85 00 00 */	lwz r4, 0(r5)
/* 809FA1E8  80 05 00 04 */	lwz r0, 4(r5)
/* 809FA1EC  90 81 00 08 */	stw r4, 8(r1)
/* 809FA1F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809FA1F4  80 05 00 08 */	lwz r0, 8(r5)
/* 809FA1F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809FA1FC  38 81 00 08 */	addi r4, r1, 8
/* 809FA200  48 00 14 CD */	bl chkAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i
/* 809FA204  2C 03 00 00 */	cmpwi r3, 0
/* 809FA208  40 82 01 94 */	bne lbl_809FA39C
/* 809FA20C  38 00 00 00 */	li r0, 0
/* 809FA210  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 809FA214  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FA218  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FA21C  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 809FA220  28 04 00 01 */	cmplwi r4, 1
/* 809FA224  41 82 00 0C */	beq lbl_809FA230
/* 809FA228  28 04 00 02 */	cmplwi r4, 2
/* 809FA22C  40 82 00 08 */	bne lbl_809FA234
lbl_809FA230:
/* 809FA230  38 00 00 01 */	li r0, 1
lbl_809FA234:
/* 809FA234  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809FA238  41 82 00 2C */	beq lbl_809FA264
/* 809FA23C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809FA240  4B 64 E5 B1 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 809FA244  2C 03 00 00 */	cmpwi r3, 0
/* 809FA248  41 82 00 14 */	beq lbl_809FA25C
/* 809FA24C  38 00 00 01 */	li r0, 1
/* 809FA250  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 809FA254  7F E3 FB 78 */	mr r3, r31
/* 809FA258  4B 74 FF CD */	bl evtChange__8daNpcT_cFv
lbl_809FA25C:
/* 809FA25C  38 60 00 01 */	li r3, 1
/* 809FA260  48 00 01 40 */	b lbl_809FA3A0
lbl_809FA264:
/* 809FA264  3B C0 00 00 */	li r30, 0
/* 809FA268  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 809FA26C  2C 00 00 03 */	cmpwi r0, 3
/* 809FA270  41 82 00 F8 */	beq lbl_809FA368
/* 809FA274  40 80 01 28 */	bge lbl_809FA39C
/* 809FA278  2C 00 00 00 */	cmpwi r0, 0
/* 809FA27C  41 82 00 08 */	beq lbl_809FA284
/* 809FA280  48 00 01 1C */	b lbl_809FA39C
lbl_809FA284:
/* 809FA284  88 1F 17 23 */	lbz r0, 0x1723(r31)
/* 809FA288  28 00 00 00 */	cmplwi r0, 0
/* 809FA28C  40 82 01 10 */	bne lbl_809FA39C
/* 809FA290  38 60 00 AC */	li r3, 0xac
/* 809FA294  4B 75 28 19 */	bl daNpcT_chkEvtBit__FUl
/* 809FA298  2C 03 00 00 */	cmpwi r3, 0
/* 809FA29C  40 82 01 00 */	bne lbl_809FA39C
/* 809FA2A0  38 60 00 AB */	li r3, 0xab
/* 809FA2A4  4B 75 28 09 */	bl daNpcT_chkEvtBit__FUl
/* 809FA2A8  2C 03 00 00 */	cmpwi r3, 0
/* 809FA2AC  40 82 00 F0 */	bne lbl_809FA39C
/* 809FA2B0  38 60 00 B7 */	li r3, 0xb7
/* 809FA2B4  4B 75 27 F9 */	bl daNpcT_chkEvtBit__FUl
/* 809FA2B8  2C 03 00 00 */	cmpwi r3, 0
/* 809FA2BC  40 82 00 E0 */	bne lbl_809FA39C
/* 809FA2C0  38 60 02 35 */	li r3, 0x235
/* 809FA2C4  4B 75 27 E9 */	bl daNpcT_chkEvtBit__FUl
/* 809FA2C8  2C 03 00 00 */	cmpwi r3, 0
/* 809FA2CC  41 82 00 2C */	beq lbl_809FA2F8
/* 809FA2D0  38 60 02 43 */	li r3, 0x243
/* 809FA2D4  4B 75 27 D9 */	bl daNpcT_chkEvtBit__FUl
/* 809FA2D8  2C 03 00 00 */	cmpwi r3, 0
/* 809FA2DC  40 82 00 70 */	bne lbl_809FA34C
/* 809FA2E0  38 60 02 6F */	li r3, 0x26f
/* 809FA2E4  4B 75 27 C9 */	bl daNpcT_chkEvtBit__FUl
/* 809FA2E8  2C 03 00 00 */	cmpwi r3, 0
/* 809FA2EC  40 82 00 60 */	bne lbl_809FA34C
/* 809FA2F0  3B C0 00 07 */	li r30, 7
/* 809FA2F4  48 00 00 58 */	b lbl_809FA34C
lbl_809FA2F8:
/* 809FA2F8  38 60 00 18 */	li r3, 0x18
/* 809FA2FC  4B 75 27 B1 */	bl daNpcT_chkEvtBit__FUl
/* 809FA300  2C 03 00 00 */	cmpwi r3, 0
/* 809FA304  41 82 00 34 */	beq lbl_809FA338
/* 809FA308  38 60 02 43 */	li r3, 0x243
/* 809FA30C  4B 75 27 A1 */	bl daNpcT_chkEvtBit__FUl
/* 809FA310  2C 03 00 00 */	cmpwi r3, 0
/* 809FA314  40 82 00 0C */	bne lbl_809FA320
/* 809FA318  3B C0 00 05 */	li r30, 5
/* 809FA31C  48 00 00 30 */	b lbl_809FA34C
lbl_809FA320:
/* 809FA320  38 60 00 8B */	li r3, 0x8b
/* 809FA324  4B 75 27 89 */	bl daNpcT_chkEvtBit__FUl
/* 809FA328  2C 03 00 00 */	cmpwi r3, 0
/* 809FA32C  40 82 00 20 */	bne lbl_809FA34C
/* 809FA330  3B C0 00 06 */	li r30, 6
/* 809FA334  48 00 00 18 */	b lbl_809FA34C
lbl_809FA338:
/* 809FA338  38 60 02 43 */	li r3, 0x243
/* 809FA33C  4B 75 27 71 */	bl daNpcT_chkEvtBit__FUl
/* 809FA340  2C 03 00 00 */	cmpwi r3, 0
/* 809FA344  40 82 00 08 */	bne lbl_809FA34C
/* 809FA348  3B C0 00 04 */	li r30, 4
lbl_809FA34C:
/* 809FA34C  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 809FA350  41 82 00 4C */	beq lbl_809FA39C
/* 809FA354  B3 DF 0E 30 */	sth r30, 0xe30(r31)
/* 809FA358  7F E3 FB 78 */	mr r3, r31
/* 809FA35C  4B 74 FE C9 */	bl evtChange__8daNpcT_cFv
/* 809FA360  38 60 00 01 */	li r3, 1
/* 809FA364  48 00 00 3C */	b lbl_809FA3A0
lbl_809FA368:
/* 809FA368  38 60 02 4D */	li r3, 0x24d
/* 809FA36C  4B 75 27 41 */	bl daNpcT_chkEvtBit__FUl
/* 809FA370  2C 03 00 00 */	cmpwi r3, 0
/* 809FA374  41 82 00 10 */	beq lbl_809FA384
/* 809FA378  38 00 00 03 */	li r0, 3
/* 809FA37C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 809FA380  48 00 00 0C */	b lbl_809FA38C
lbl_809FA384:
/* 809FA384  38 00 00 02 */	li r0, 2
/* 809FA388  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_809FA38C:
/* 809FA38C  7F E3 FB 78 */	mr r3, r31
/* 809FA390  4B 74 FE 95 */	bl evtChange__8daNpcT_cFv
/* 809FA394  38 60 00 01 */	li r3, 1
/* 809FA398  48 00 00 08 */	b lbl_809FA3A0
lbl_809FA39C:
/* 809FA39C  38 60 00 00 */	li r3, 0
lbl_809FA3A0:
/* 809FA3A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809FA3A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809FA3A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809FA3AC  7C 08 03 A6 */	mtlr r0
/* 809FA3B0  38 21 00 20 */	addi r1, r1, 0x20
/* 809FA3B4  4E 80 00 20 */	blr 
