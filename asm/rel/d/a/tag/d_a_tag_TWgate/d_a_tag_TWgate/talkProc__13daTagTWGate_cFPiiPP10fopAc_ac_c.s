lbl_80D55068:
/* 80D55068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D5506C  7C 08 02 A6 */	mflr r0
/* 80D55070  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D55074  39 61 00 20 */	addi r11, r1, 0x20
/* 80D55078  4B 60 D1 5D */	bl _savegpr_27
/* 80D5507C  7C 7B 1B 78 */	mr r27, r3
/* 80D55080  7C 9C 23 78 */	mr r28, r4
/* 80D55084  7C BD 2B 78 */	mr r29, r5
/* 80D55088  7C DF 33 78 */	mr r31, r6
/* 80D5508C  3B C0 00 00 */	li r30, 0
/* 80D55090  4B 4E 32 65 */	bl isMsgSendControl__12dMsgObject_cFv
/* 80D55094  2C 03 00 00 */	cmpwi r3, 0
/* 80D55098  41 82 00 14 */	beq lbl_80D550AC
/* 80D5509C  2C 1D 00 00 */	cmpwi r29, 0
/* 80D550A0  41 82 00 A4 */	beq lbl_80D55144
/* 80D550A4  4B 4E 32 25 */	bl offMsgSendControl__12dMsgObject_cFv
/* 80D550A8  48 00 00 9C */	b lbl_80D55144
lbl_80D550AC:
/* 80D550AC  38 7B 05 8C */	addi r3, r27, 0x58c
/* 80D550B0  7F 64 DB 78 */	mr r4, r27
/* 80D550B4  7F E5 FB 78 */	mr r5, r31
/* 80D550B8  38 C0 00 00 */	li r6, 0
/* 80D550BC  4B 4F 52 1D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D550C0  2C 03 00 00 */	cmpwi r3, 0
/* 80D550C4  41 82 00 0C */	beq lbl_80D550D0
/* 80D550C8  3B C0 00 01 */	li r30, 1
/* 80D550CC  48 00 00 78 */	b lbl_80D55144
lbl_80D550D0:
/* 80D550D0  38 7B 05 8C */	addi r3, r27, 0x58c
/* 80D550D4  4B 4F 54 75 */	bl getMsg__10dMsgFlow_cFv
/* 80D550D8  28 03 00 00 */	cmplwi r3, 0
/* 80D550DC  41 82 00 68 */	beq lbl_80D55144
/* 80D550E0  38 7B 05 8C */	addi r3, r27, 0x58c
/* 80D550E4  4B 4F 54 65 */	bl getMsg__10dMsgFlow_cFv
/* 80D550E8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80D550EC  28 00 00 02 */	cmplwi r0, 2
/* 80D550F0  41 82 00 18 */	beq lbl_80D55108
/* 80D550F4  38 7B 05 8C */	addi r3, r27, 0x58c
/* 80D550F8  4B 4F 54 51 */	bl getMsg__10dMsgFlow_cFv
/* 80D550FC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80D55100  28 00 00 06 */	cmplwi r0, 6
/* 80D55104  40 82 00 40 */	bne lbl_80D55144
lbl_80D55108:
/* 80D55108  28 1C 00 00 */	cmplwi r28, 0
/* 80D5510C  41 82 00 38 */	beq lbl_80D55144
/* 80D55110  3B E0 00 00 */	li r31, 0
/* 80D55114  48 00 00 24 */	b lbl_80D55138
lbl_80D55118:
/* 80D55118  38 7B 05 8C */	addi r3, r27, 0x58c
/* 80D5511C  4B 4F 54 1D */	bl getMsgNo__10dMsgFlow_cFv
/* 80D55120  7C 1C F8 2E */	lwzx r0, r28, r31
/* 80D55124  7C 00 18 40 */	cmplw r0, r3
/* 80D55128  40 82 00 0C */	bne lbl_80D55134
/* 80D5512C  3B C0 00 01 */	li r30, 1
/* 80D55130  48 00 00 14 */	b lbl_80D55144
lbl_80D55134:
/* 80D55134  3B FF 00 04 */	addi r31, r31, 4
lbl_80D55138:
/* 80D55138  7C 1C F8 2E */	lwzx r0, r28, r31
/* 80D5513C  2C 00 00 00 */	cmpwi r0, 0
/* 80D55140  41 81 FF D8 */	bgt lbl_80D55118
lbl_80D55144:
/* 80D55144  7F C3 F3 78 */	mr r3, r30
/* 80D55148  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5514C  4B 60 D0 D5 */	bl _restgpr_27
/* 80D55150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D55154  7C 08 03 A6 */	mtlr r0
/* 80D55158  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5515C  4E 80 00 20 */	blr 
