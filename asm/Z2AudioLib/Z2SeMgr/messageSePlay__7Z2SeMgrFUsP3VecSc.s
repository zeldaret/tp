lbl_802ADB14:
/* 802ADB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ADB18  7C 08 02 A6 */	mflr r0
/* 802ADB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ADB20  7C 88 23 78 */	mr r8, r4
/* 802ADB24  7C A0 2B 78 */	mr r0, r5
/* 802ADB28  7C C7 33 78 */	mr r7, r6
/* 802ADB2C  80 6D 85 F0 */	lwz r3, __OSReport_disable-0x28(r13)
/* 802ADB30  38 80 00 00 */	li r4, 0
/* 802ADB34  7D 05 43 78 */	mr r5, r8
/* 802ADB38  7C 06 03 78 */	mr r6, r0
/* 802ADB3C  48 01 EE DD */	bl playOneShotVoice__12Z2SpeechMgr2FUcUsP3VecSc
/* 802ADB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ADB44  7C 08 03 A6 */	mtlr r0
/* 802ADB48  38 21 00 10 */	addi r1, r1, 0x10
/* 802ADB4C  4E 80 00 20 */	blr 
