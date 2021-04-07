lbl_80342C0C:
/* 80342C0C  7C 08 02 A6 */	mflr r0
/* 80342C10  90 01 00 04 */	stw r0, 4(r1)
/* 80342C14  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80342C18  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80342C1C  3B E4 00 00 */	addi r31, r4, 0
/* 80342C20  3C 80 80 45 */	lis r4, Ecb@ha /* 0x8044C570@ha */
/* 80342C24  38 84 C5 70 */	addi r4, r4, Ecb@l /* 0x8044C570@l */
/* 80342C28  38 84 00 80 */	addi r4, r4, 0x80
/* 80342C2C  2C 03 00 01 */	cmpwi r3, 1
/* 80342C30  41 82 00 5C */	beq lbl_80342C8C
/* 80342C34  40 80 00 10 */	bge lbl_80342C44
/* 80342C38  2C 03 00 00 */	cmpwi r3, 0
/* 80342C3C  40 80 00 14 */	bge lbl_80342C50
/* 80342C40  48 00 00 AC */	b lbl_80342CEC
lbl_80342C44:
/* 80342C44  2C 03 00 03 */	cmpwi r3, 3
/* 80342C48  40 80 00 A4 */	bge lbl_80342CEC
/* 80342C4C  48 00 00 70 */	b lbl_80342CBC
lbl_80342C50:
/* 80342C50  80 1F 00 00 */	lwz r0, 0(r31)
/* 80342C54  28 00 00 00 */	cmplwi r0, 0
/* 80342C58  40 82 00 10 */	bne lbl_80342C68
/* 80342C5C  80 04 00 00 */	lwz r0, 0(r4)
/* 80342C60  28 00 00 00 */	cmplwi r0, 0
/* 80342C64  41 82 00 10 */	beq lbl_80342C74
lbl_80342C68:
/* 80342C68  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80342C6C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80342C70  41 82 00 10 */	beq lbl_80342C80
lbl_80342C74:
/* 80342C74  3C 60 00 41 */	lis r3, 0x41
/* 80342C78  4B FF AE 45 */	bl __OSMaskInterrupts
/* 80342C7C  48 00 00 70 */	b lbl_80342CEC
lbl_80342C80:
/* 80342C80  3C 60 00 41 */	lis r3, 0x41
/* 80342C84  4B FF AE C1 */	bl __OSUnmaskInterrupts
/* 80342C88  48 00 00 64 */	b lbl_80342CEC
lbl_80342C8C:
/* 80342C8C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80342C90  28 00 00 00 */	cmplwi r0, 0
/* 80342C94  41 82 00 10 */	beq lbl_80342CA4
/* 80342C98  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80342C9C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80342CA0  41 82 00 10 */	beq lbl_80342CB0
lbl_80342CA4:
/* 80342CA4  3C 60 00 08 */	lis r3, 8
/* 80342CA8  4B FF AE 15 */	bl __OSMaskInterrupts
/* 80342CAC  48 00 00 40 */	b lbl_80342CEC
lbl_80342CB0:
/* 80342CB0  3C 60 00 08 */	lis r3, 8
/* 80342CB4  4B FF AE 91 */	bl __OSUnmaskInterrupts
/* 80342CB8  48 00 00 34 */	b lbl_80342CEC
lbl_80342CBC:
/* 80342CBC  38 60 00 19 */	li r3, 0x19
/* 80342CC0  4B FF AA 9D */	bl __OSGetInterruptHandler
/* 80342CC4  28 03 00 00 */	cmplwi r3, 0
/* 80342CC8  41 82 00 10 */	beq lbl_80342CD8
/* 80342CCC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80342CD0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80342CD4  41 82 00 10 */	beq lbl_80342CE4
lbl_80342CD8:
/* 80342CD8  38 60 00 40 */	li r3, 0x40
/* 80342CDC  4B FF AD E1 */	bl __OSMaskInterrupts
/* 80342CE0  48 00 00 0C */	b lbl_80342CEC
lbl_80342CE4:
/* 80342CE4  38 60 00 40 */	li r3, 0x40
/* 80342CE8  4B FF AE 5D */	bl __OSUnmaskInterrupts
lbl_80342CEC:
/* 80342CEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80342CF0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80342CF4  38 21 00 18 */	addi r1, r1, 0x18
/* 80342CF8  7C 08 03 A6 */	mtlr r0
/* 80342CFC  4E 80 00 20 */	blr 
