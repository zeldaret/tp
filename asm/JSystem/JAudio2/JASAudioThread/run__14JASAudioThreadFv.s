lbl_8029CDEC:
/* 8029CDEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029CDF0  7C 08 02 A6 */	mflr r0
/* 8029CDF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029CDF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029CDFC  7C 7F 1B 78 */	mr r31, r3
/* 8029CE00  38 60 00 04 */	li r3, 4
/* 8029CE04  64 63 00 04 */	oris r3, r3, 4
/* 8029CE08  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8029CE0C  38 60 00 05 */	li r3, 5
/* 8029CE10  64 63 00 05 */	oris r3, r3, 5
/* 8029CE14  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8029CE18  38 60 00 06 */	li r3, 6
/* 8029CE1C  64 63 00 06 */	oris r3, r3, 6
/* 8029CE20  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8029CE24  38 60 00 07 */	li r3, 7
/* 8029CE28  64 63 00 07 */	oris r3, r3, 7
/* 8029CE2C  7C 75 E3 A6 */	mtspr 0x395, r3
/* 8029CE30  3C 80 80 2A */	lis r4, DMACallback__14JASAudioThreadFv@ha /* 0x8029CF68@ha */
/* 8029CE34  38 64 CF 68 */	addi r3, r4, DMACallback__14JASAudioThreadFv@l /* 0x8029CF68@l */
/* 8029CE38  4B FF F5 51 */	bl initAI__9JASDriverFPFv_v
/* 8029CE3C  3C 80 80 2A */	lis r4, DSPCallback__14JASAudioThreadFPv@ha /* 0x8029CFBC@ha */
/* 8029CE40  38 64 CF BC */	addi r3, r4, DSPCallback__14JASAudioThreadFPv@l /* 0x8029CFBC@l */
/* 8029CE44  48 00 0B 15 */	bl boot__6JASDspFPFPv_v
/* 8029CE48  48 00 0C 81 */	bl initBuffer__6JASDspFv
/* 8029CE4C  48 00 05 7D */	bl initAll__13JASDSPChannelFv
/* 8029CE50  88 0D 8C E2 */	lbz r0, struct_80451260+0x2(r13)
/* 8029CE54  7C 00 07 75 */	extsb. r0, r0
/* 8029CE58  40 82 00 34 */	bne lbl_8029CE8C
/* 8029CE5C  3C 80 80 43 */	lis r4, data_80431B34@ha /* 0x80431B34@ha */
/* 8029CE60  38 64 1B 34 */	addi r3, r4, data_80431B34@l /* 0x80431B34@l */
/* 8029CE64  4B FF 39 E5 */	bl __ct__17JASGenericMemPoolFv
/* 8029CE68  3C 80 80 43 */	lis r4, data_80431B34@ha /* 0x80431B34@ha */
/* 8029CE6C  38 64 1B 34 */	addi r3, r4, data_80431B34@l /* 0x80431B34@l */
/* 8029CE70  3C 80 80 29 */	lis r4, func_802978DC@ha /* 0x802978DC@ha */
/* 8029CE74  38 84 78 DC */	addi r4, r4, func_802978DC@l /* 0x802978DC@l */
/* 8029CE78  3C A0 80 43 */	lis r5, lit_205@ha /* 0x80431C68@ha */
/* 8029CE7C  38 A5 1C 68 */	addi r5, r5, lit_205@l /* 0x80431C68@l */
/* 8029CE80  48 0C 4D A5 */	bl __register_global_object
/* 8029CE84  38 00 00 01 */	li r0, 1
/* 8029CE88  98 0D 8C E2 */	stb r0, struct_80451260+0x2(r13)
lbl_8029CE8C:
/* 8029CE8C  48 0A 08 69 */	bl OSDisableInterrupts
/* 8029CE90  90 61 00 08 */	stw r3, 8(r1)
/* 8029CE94  3C 80 80 43 */	lis r4, data_80431B34@ha /* 0x80431B34@ha */
/* 8029CE98  38 64 1B 34 */	addi r3, r4, data_80431B34@l /* 0x80431B34@l */
/* 8029CE9C  38 80 01 08 */	li r4, 0x108
/* 8029CEA0  38 A0 00 48 */	li r5, 0x48
/* 8029CEA4  4B FF 3A 25 */	bl newMemPool__17JASGenericMemPoolFUli
/* 8029CEA8  80 61 00 08 */	lwz r3, 8(r1)
/* 8029CEAC  48 0A 08 71 */	bl OSRestoreInterrupts
/* 8029CEB0  4B FF F6 35 */	bl startDMA__9JASDriverFv
lbl_8029CEB4:
/* 8029CEB4  38 7F 00 30 */	addi r3, r31, 0x30
/* 8029CEB8  38 81 00 0C */	addi r4, r1, 0xc
/* 8029CEBC  38 A0 00 01 */	li r5, 1
/* 8029CEC0  48 0A 1B FD */	bl OSReceiveMessage
/* 8029CEC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8029CEC8  2C 00 00 01 */	cmpwi r0, 1
/* 8029CECC  41 82 00 44 */	beq lbl_8029CF10
/* 8029CED0  40 80 00 10 */	bge lbl_8029CEE0
/* 8029CED4  2C 00 00 00 */	cmpwi r0, 0
/* 8029CED8  40 80 00 14 */	bge lbl_8029CEEC
/* 8029CEDC  4B FF FF D8 */	b lbl_8029CEB4
lbl_8029CEE0:
/* 8029CEE0  2C 00 00 03 */	cmpwi r0, 3
/* 8029CEE4  40 80 FF D0 */	bge lbl_8029CEB4
/* 8029CEE8  48 00 00 70 */	b lbl_8029CF58
lbl_8029CEEC:
/* 8029CEEC  88 1F 00 84 */	lbz r0, 0x84(r31)
/* 8029CEF0  28 00 00 00 */	cmplwi r0, 0
/* 8029CEF4  41 82 00 10 */	beq lbl_8029CF04
/* 8029CEF8  4B FF F6 0D */	bl stopDMA__9JASDriverFv
/* 8029CEFC  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8029CF00  48 0A 4C AD */	bl OSSleepThread
lbl_8029CF04:
/* 8029CF04  4B FF F6 65 */	bl updateDac__9JASDriverFv
/* 8029CF08  48 00 13 F1 */	bl updateDacCallback__9JASDriverFv
/* 8029CF0C  4B FF FF A8 */	b lbl_8029CEB4
lbl_8029CF10:
/* 8029CF10  80 8D 8D 58 */	lwz r4, snIntCount__14JASAudioThread(r13)
/* 8029CF14  38 04 FF FF */	addi r0, r4, -1
/* 8029CF18  90 0D 8D 58 */	stw r0, snIntCount__14JASAudioThread(r13)
/* 8029CF1C  80 0D 8D 58 */	lwz r0, snIntCount__14JASAudioThread(r13)
/* 8029CF20  2C 00 00 00 */	cmpwi r0, 0
/* 8029CF24  40 82 00 14 */	bne lbl_8029CF38
/* 8029CF28  38 60 00 07 */	li r3, 7
/* 8029CF2C  4B FF 3F F9 */	bl stop__8JASProbeFl
/* 8029CF30  4B FF F9 D1 */	bl finishDSPFrame__9JASDriverFv
/* 8029CF34  4B FF FF 80 */	b lbl_8029CEB4
lbl_8029CF38:
/* 8029CF38  38 60 00 02 */	li r3, 2
/* 8029CF3C  3C 80 80 3A */	lis r4, JASAudioThread__stringBase0@ha /* 0x8039B338@ha */
/* 8029CF40  38 84 B3 38 */	addi r4, r4, JASAudioThread__stringBase0@l /* 0x8039B338@l */
/* 8029CF44  4B FF 3F A1 */	bl start__8JASProbeFlPCc
/* 8029CF48  4B FF F7 7D */	bl updateDSP__9JASDriverFv
/* 8029CF4C  38 60 00 02 */	li r3, 2
/* 8029CF50  4B FF 3F D5 */	bl stop__8JASProbeFl
/* 8029CF54  4B FF FF 60 */	b lbl_8029CEB4
lbl_8029CF58:
/* 8029CF58  4B FF F5 AD */	bl stopDMA__9JASDriverFv
/* 8029CF5C  38 60 00 00 */	li r3, 0
/* 8029CF60  48 0A 45 15 */	bl OSExitThread
/* 8029CF64  4B FF FF 50 */	b lbl_8029CEB4
