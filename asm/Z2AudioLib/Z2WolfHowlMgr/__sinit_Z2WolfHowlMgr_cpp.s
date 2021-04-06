lbl_802CBB7C:
/* 802CBB7C  3C 60 80 43 */	lis r3, sCorrectPhrase@ha /* 0x804341F8@ha */
/* 802CBB80  38 C3 41 F8 */	addi r6, r3, sCorrectPhrase@l /* 0x804341F8@l */
/* 802CBB84  3C A0 01 00 */	lis r5, 0x0100 /* 0x01000052@ha */
/* 802CBB88  38 05 00 52 */	addi r0, r5, 0x0052 /* 0x01000052@l */
/* 802CBB8C  90 06 00 00 */	stw r0, 0(r6)
/* 802CBB90  38 05 00 53 */	addi r0, r5, 0x53
/* 802CBB94  38 66 00 00 */	addi r3, r6, 0
/* 802CBB98  90 03 00 04 */	stw r0, 4(r3)
/* 802CBB9C  38 05 00 54 */	addi r0, r5, 0x54
/* 802CBBA0  90 03 00 08 */	stw r0, 8(r3)
/* 802CBBA4  38 05 00 72 */	addi r0, r5, 0x72
/* 802CBBA8  90 03 00 0C */	stw r0, 0xc(r3)
/* 802CBBAC  38 05 00 68 */	addi r0, r5, 0x68
/* 802CBBB0  90 03 00 10 */	stw r0, 0x10(r3)
/* 802CBBB4  38 05 00 55 */	addi r0, r5, 0x55
/* 802CBBB8  90 03 00 14 */	stw r0, 0x14(r3)
/* 802CBBBC  38 05 00 75 */	addi r0, r5, 0x75
/* 802CBBC0  90 03 00 18 */	stw r0, 0x18(r3)
/* 802CBBC4  38 05 00 7C */	addi r0, r5, 0x7c
/* 802CBBC8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802CBBCC  38 05 00 7F */	addi r0, r5, 0x7f
/* 802CBBD0  90 03 00 20 */	stw r0, 0x20(r3)
/* 802CBBD4  38 80 FF FF */	li r4, -1
/* 802CBBD8  90 86 00 24 */	stw r4, 0x24(r6)
/* 802CBBDC  38 66 00 24 */	addi r3, r6, 0x24
/* 802CBBE0  90 83 00 04 */	stw r4, 4(r3)
/* 802CBBE4  38 05 00 5B */	addi r0, r5, 0x5b
/* 802CBBE8  90 03 00 08 */	stw r0, 8(r3)
/* 802CBBEC  38 05 00 71 */	addi r0, r5, 0x71
/* 802CBBF0  90 03 00 0C */	stw r0, 0xc(r3)
/* 802CBBF4  38 05 00 67 */	addi r0, r5, 0x67
/* 802CBBF8  90 03 00 10 */	stw r0, 0x10(r3)
/* 802CBBFC  38 05 00 5C */	addi r0, r5, 0x5c
/* 802CBC00  90 03 00 14 */	stw r0, 0x14(r3)
/* 802CBC04  38 05 00 74 */	addi r0, r5, 0x74
/* 802CBC08  90 03 00 18 */	stw r0, 0x18(r3)
/* 802CBC0C  38 05 00 7B */	addi r0, r5, 0x7b
/* 802CBC10  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802CBC14  38 05 00 7E */	addi r0, r5, 0x7e
/* 802CBC18  90 03 00 20 */	stw r0, 0x20(r3)
/* 802CBC1C  90 86 00 48 */	stw r4, 0x48(r6)
/* 802CBC20  38 66 00 48 */	addi r3, r6, 0x48
/* 802CBC24  90 83 00 04 */	stw r4, 4(r3)
/* 802CBC28  90 83 00 08 */	stw r4, 8(r3)
/* 802CBC2C  38 05 00 73 */	addi r0, r5, 0x73
/* 802CBC30  90 03 00 0C */	stw r0, 0xc(r3)
/* 802CBC34  38 05 00 69 */	addi r0, r5, 0x69
/* 802CBC38  90 03 00 10 */	stw r0, 0x10(r3)
/* 802CBC3C  38 05 00 66 */	addi r0, r5, 0x66
/* 802CBC40  90 03 00 14 */	stw r0, 0x14(r3)
/* 802CBC44  38 05 00 76 */	addi r0, r5, 0x76
/* 802CBC48  90 03 00 18 */	stw r0, 0x18(r3)
/* 802CBC4C  38 05 00 7D */	addi r0, r5, 0x7d
/* 802CBC50  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802CBC54  38 05 00 80 */	addi r0, r5, 0x80
/* 802CBC58  90 03 00 20 */	stw r0, 0x20(r3)
/* 802CBC5C  4E 80 00 20 */	blr 
